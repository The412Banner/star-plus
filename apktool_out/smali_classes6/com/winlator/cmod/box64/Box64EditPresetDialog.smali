.class public Lcom/winlator/cmod/box64/Box64EditPresetDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "Box64EditPresetDialog.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private isDarkMode:Z

.field private onConfirmCallback:Ljava/lang/Runnable;

.field private final prefix:Ljava/lang/String;

.field private final preset:Lcom/winlator/cmod/box64/Box64Preset;

.field private final readonly:Z


# direct methods
.method public static synthetic $r8$lambda$Kzru-U7jmUapuUKZ51fIju_2MYc(Lcom/winlator/cmod/box64/Box64EditPresetDialog;Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->lambda$new$0(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v0jRTrYltc4Kr-pq5nyOuPDQ0FQ(Lcom/winlator/cmod/box64/Box64EditPresetDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->lambda$loadEnvVarsList$1(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "presetId"    # Ljava/lang/String;

    .line 42
    const v0, 0x7f0c0028

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-object p1, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->prefix:Ljava/lang/String;

    .line 45
    if-eqz p3, :cond_0

    invoke-static {p2, p1, p3}, Lcom/winlator/cmod/box64/Box64PresetManager;->getPreset(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/cmod/box64/Box64Preset;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->preset:Lcom/winlator/cmod/box64/Box64Preset;

    .line 46
    iget-object v0, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->preset:Lcom/winlator/cmod/box64/Box64Preset;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->preset:Lcom/winlator/cmod/box64/Box64Preset;

    invoke-virtual {v0}, Lcom/winlator/cmod/box64/Box64Preset;->isCustom()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->readonly:Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_preset"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/StringUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->setTitle(Ljava/lang/String;)V

    .line 48
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->setIcon(I)V

    .line 51
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "dark_mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->isDarkMode:Z

    .line 54
    const v2, 0x7f09013e

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 55
    .local v2, "environmentVariablesLabel":Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->isDarkMode:Z

    invoke-static {v2, v3}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 57
    const v3, 0x7f09007a

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 58
    .local v3, "etName":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {p1}, Lcom/winlator/cmod/core/AppUtils;->getPreferredDialogWidth(Landroid/content/Context;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    iget-boolean v4, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->readonly:Z

    xor-int/2addr v1, v4

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 60
    iget-object v1, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->preset:Lcom/winlator/cmod/box64/Box64Preset;

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->preset:Lcom/winlator/cmod/box64/Box64Preset;

    iget-object v1, v1, Lcom/winlator/cmod/box64/Box64Preset;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 63
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

    invoke-static {p1, p2}, Lcom/winlator/cmod/box64/Box64PresetManager;->getNextPresetId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_2
    invoke-direct {p0, v3}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->applyDarkThemeToEditText(Landroid/widget/EditText;)V

    .line 67
    invoke-direct {p0}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->loadEnvVarsList()V

    .line 69
    new-instance v1, Lcom/winlator/cmod/box64/Box64EditPresetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v3, p2, p1}, Lcom/winlator/cmod/box64/Box64EditPresetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/box64/Box64EditPresetDialog;Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;)V

    invoke-super {p0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method private applyDarkThemeToEditText(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 158
    iget-boolean v0, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->isDarkMode:Z

    const v1, -0x777778

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 160
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 161
    const v0, 0x7f0800fd

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0

    .line 163
    :cond_0
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 164
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 165
    const v0, 0x7f0800fc

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 167
    :goto_0
    return-void
.end method

.method private static applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "isDarkMode"    # Z

    .line 146
    if-eqz p1, :cond_0

    .line 148
    const-string v0, "#cccccc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 152
    :cond_0
    const-string v0, "#bdbdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    const v0, 0x7f0600dc

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 155
    :goto_0
    return-void
.end method

.method private getEnvVars()Lcom/winlator/cmod/core/EnvVars;
    .locals 9

    .line 84
    new-instance v0, Lcom/winlator/cmod/core/EnvVars;

    invoke-direct {v0}, Lcom/winlator/cmod/core/EnvVars;-><init>()V

    .line 85
    .local v0, "envVars":Lcom/winlator/cmod/core/EnvVars;
    const v1, 0x7f090096

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 86
    .local v1, "parent":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, "child":Landroid/view/View;
    const v4, 0x7f09017c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "name":Ljava/lang/String;
    const v5, 0x7f09011c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 91
    .local v5, "spinner":Landroid/widget/Spinner;
    const v6, 0x7f09017d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ToggleButton;

    .line 92
    .local v6, "toggleButton":Landroid/widget/ToggleButton;
    invoke-virtual {v6}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 93
    .local v7, "toggleSwitch":Z
    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "1"

    goto :goto_2

    :cond_1
    const-string v8, "0"

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "value":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v4, v8}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "spinner":Landroid/widget/Spinner;
    .end local v6    # "toggleButton":Landroid/widget/ToggleButton;
    .end local v7    # "toggleSwitch":Z
    .end local v8    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method private synthetic lambda$loadEnvVarsList$1(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->prefix:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "suffix":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "box64_env_var_help__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/StringUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    invoke-static {v2, p2, v1}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "etName"    # Landroid/widget/EditText;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 72
    :cond_0
    const-string v1, "[,\\|]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->preset:Lcom/winlator/cmod/box64/Box64Preset;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->preset:Lcom/winlator/cmod/box64/Box64Preset;

    iget-object v1, v1, Lcom/winlator/cmod/box64/Box64Preset;->id:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->getEnvVars()Lcom/winlator/cmod/core/EnvVars;

    move-result-object v2

    invoke-static {p2, p3, v1, v0, v2}, Lcom/winlator/cmod/box64/Box64PresetManager;->editPreset(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/winlator/cmod/core/EnvVars;)V

    .line 74
    iget-object v1, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->onConfirmCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->onConfirmCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 75
    :cond_2
    return-void
.end method

.method private loadEnvVarsList()V
    .locals 15

    .line 101
    const v0, 0x7f090096

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 102
    .local v0, "parent":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 103
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_env_vars.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "data":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->preset:Lcom/winlator/cmod/box64/Box64Preset;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->prefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->preset:Lcom/winlator/cmod/box64/Box64Preset;

    iget-object v5, v5, Lcom/winlator/cmod/box64/Box64Preset;->id:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/winlator/cmod/box64/Box64PresetManager;->getEnvVars(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/cmod/core/EnvVars;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 106
    .local v3, "envVars":Lcom/winlator/cmod/core/EnvVars;
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 107
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 108
    .local v5, "item":Lorg/json/JSONObject;
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "name":Ljava/lang/String;
    const v7, 0x7f0c0029

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 110
    .local v7, "child":Landroid/view/View;
    const v9, 0x7f09017c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v9, 0x7f090026

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/winlator/cmod/box64/Box64EditPresetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0, v6}, Lcom/winlator/cmod/box64/Box64EditPresetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/box64/Box64EditPresetDialog;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v9, 0x7f09011c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 119
    .local v9, "spinner":Landroid/widget/Spinner;
    const v10, 0x7f09017d

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    .line 120
    .local v10, "toggleButton":Landroid/widget/ToggleButton;
    const-string v11, "values"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-static {v11}, Lcom/winlator/cmod/core/ArrayUtils;->toStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v11

    .line 121
    .local v11, "values":[Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Lcom/winlator/cmod/core/EnvVars;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v3, v6}, Lcom/winlator/cmod/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_1
    const-string v12, "defaultValue"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, "value":Ljava/lang/String;
    :goto_2
    const-string v13, "toggleSwitch"

    invoke-virtual {v5, v13, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_3

    .line 124
    invoke-virtual {v10, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 125
    iget-boolean v13, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->readonly:Z

    if-nez v13, :cond_2

    move v8, v14

    :cond_2
    invoke-virtual {v10, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 126
    const-string v8, "1"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 127
    iget-boolean v8, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->readonly:Z

    if-eqz v8, :cond_6

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v10, v8}, Landroid/widget/ToggleButton;->setAlpha(F)V

    goto :goto_4

    .line 130
    :cond_3
    iget-boolean v13, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->isDarkMode:Z

    if-eqz v13, :cond_4

    const v13, 0x7f0800f3

    goto :goto_3

    :cond_4
    const v13, 0x7f0800f2

    :goto_3
    invoke-virtual {v9, v13}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 131
    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 132
    iget-boolean v13, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->readonly:Z

    if-nez v13, :cond_5

    move v8, v14

    :cond_5
    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 133
    new-instance v8, Landroid/widget/ArrayAdapter;

    iget-object v13, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->context:Landroid/content/Context;

    const v14, 0x1090009

    invoke-direct {v8, v13, v14, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 134
    invoke-static {v9, v12}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 137
    :cond_6
    :goto_4
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v5    # "item":Lorg/json/JSONObject;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "spinner":Landroid/widget/Spinner;
    .end local v10    # "toggleButton":Landroid/widget/ToggleButton;
    .end local v11    # "values":[Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .end local v0    # "parent":Landroid/widget/LinearLayout;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "data":Lorg/json/JSONArray;
    .end local v3    # "envVars":Lcom/winlator/cmod/core/EnvVars;
    .end local v4    # "i":I
    :cond_7
    goto :goto_5

    .line 140
    :catch_0
    move-exception v0

    :goto_5
    nop

    .line 141
    return-void
.end method


# virtual methods
.method public setOnConfirmCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onConfirmCallback"    # Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->onConfirmCallback:Ljava/lang/Runnable;

    .line 81
    return-void
.end method
