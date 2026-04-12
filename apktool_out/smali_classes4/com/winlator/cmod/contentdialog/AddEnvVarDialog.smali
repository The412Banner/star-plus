.class public Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "AddEnvVarDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/winlator/cmod/widget/EnvVarsView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "envVarsView"    # Lcom/winlator/cmod/widget/EnvVarsView;

    .line 17
    const v0, 0x7f0c0021

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 18
    const v0, 0x7f09007a

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 19
    .local v0, "etName":Landroid/widget/EditText;
    const v1, 0x7f09007e

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 21
    .local v1, "etValue":Landroid/widget/EditText;
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 22
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "dark_mode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 23
    .local v3, "isDarkMode":Z
    invoke-direct {p0, v0, v3}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;->applyDarkThemeToEditText(Landroid/widget/EditText;Z)V

    .line 24
    invoke-direct {p0, v1, v3}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;->applyDarkThemeToEditText(Landroid/widget/EditText;Z)V

    .line 26
    const v4, 0x7f10017a

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;->setTitle(Ljava/lang/String;)V

    .line 27
    const v4, 0x7f080122

    invoke-virtual {p0, v4}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;->setIcon(I)V

    .line 29
    const v4, 0x7f090032

    invoke-virtual {p0, v4}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, v0}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance v4, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1, p2}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/winlator/cmod/widget/EnvVarsView;)V

    invoke-virtual {p0, v4}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method private applyDarkThemeToEditText(Landroid/widget/EditText;Z)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "isDarkMode"    # Z

    .line 52
    const v0, -0x777778

    if-eqz p2, :cond_0

    .line 53
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 55
    const v0, 0x7f0800fd

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0

    .line 57
    :cond_0
    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 59
    const v0, 0x7f0800fc

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 61
    :goto_0
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/widget/EditText;Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "etName"    # Landroid/widget/EditText;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 35
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "etName"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 30
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 31
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 32
    .local v1, "menu":Landroid/view/Menu;
    sget-object v2, Lcom/winlator/cmod/widget/EnvVarsView;->knownEnvVars:[[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .local v6, "knownEnvVar":[Ljava/lang/String;
    aget-object v7, v6, v4

    invoke-interface {v1, v7}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .end local v6    # "knownEnvVar":[Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 34
    :cond_0
    new-instance v2, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 38
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 39
    return-void
.end method

.method static synthetic lambda$new$2(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/winlator/cmod/widget/EnvVarsView;)V
    .locals 4
    .param p0, "etName"    # Landroid/widget/EditText;
    .param p1, "etValue"    # Landroid/widget/EditText;
    .param p2, "envVarsView"    # Lcom/winlator/cmod/widget/EnvVarsView;

    .line 42
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v0}, Lcom/winlator/cmod/widget/EnvVarsView;->containsName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {p2, v0, v1}, Lcom/winlator/cmod/widget/EnvVarsView;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method
