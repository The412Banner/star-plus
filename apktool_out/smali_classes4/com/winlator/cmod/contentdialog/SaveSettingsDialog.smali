.class public Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "SaveSettingsDialog.java"


# static fields
.field public static final REQUEST_CODE_CUSTOM_FILE_PICKER:I = 0x1


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final containerManager:Lcom/winlator/cmod/container/ContainerManager;

.field private etTitle:Landroid/widget/EditText;

.field private isDarkMode:Z

.field private final saveManager:Lcom/winlator/cmod/saves/SaveManager;

.field private saveToEdit:Lcom/winlator/cmod/saves/Save;

.field private selectedContainer:Lcom/winlator/cmod/container/Container;

.field private selectedPath:Ljava/lang/String;

.field private tvSavePath:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-VT_eM6He31Jr3EsVl2Dq1xqm_g(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->lambda$createContentView$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q95F9JZzRrXBSj3QK6dvoeNRzHc(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Lcom/winlator/cmod/container/ContainerManager;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->lambda$new$0(Lcom/winlator/cmod/container/ContainerManager;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q4souPxe6L23EXczy8bpGU8eb9g(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->lambda$createContentView$2(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qMWkXDU5WGuFbhxwm1TfluEgqGc(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->lambda$onActivityResult$3(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedContainer(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Lcom/winlator/cmod/container/Container;)V
    .locals 0

    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/winlator/cmod/saves/SaveManager;Lcom/winlator/cmod/container/ContainerManager;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "saveManager"    # Lcom/winlator/cmod/saves/SaveManager;
    .param p3, "containerManager"    # Lcom/winlator/cmod/container/ContainerManager;

    .line 45
    const v0, 0x7f0c00a7

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->activity:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->saveManager:Lcom/winlator/cmod/saves/SaveManager;

    .line 48
    iput-object p3, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    .line 49
    const v0, 0x7f10017e

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->setTitle(I)V

    .line 50
    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->setIcon(I)V

    .line 52
    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->createContentView()V

    .line 56
    new-instance v0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Lcom/winlator/cmod/container/ContainerManager;)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/winlator/cmod/saves/SaveManager;Lcom/winlator/cmod/container/ContainerManager;Lcom/winlator/cmod/saves/Save;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "saveManager"    # Lcom/winlator/cmod/saves/SaveManager;
    .param p3, "containerManager"    # Lcom/winlator/cmod/container/ContainerManager;
    .param p4, "saveToEdit"    # Lcom/winlator/cmod/saves/Save;

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;-><init>(Landroid/app/Activity;Lcom/winlator/cmod/saves/SaveManager;Lcom/winlator/cmod/container/ContainerManager;)V

    .line 76
    iput-object p4, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    .line 78
    if-eqz p4, :cond_0

    .line 79
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->etTitle:Landroid/widget/EditText;

    invoke-virtual {p4}, Lcom/winlator/cmod/saves/Save;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p4, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedPath:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->tvSavePath:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->tvSavePath:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p4, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    .line 85
    :cond_0
    return-void
.end method

.method private createContentView()V
    .locals 4

    .line 88
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 91
    const-string v2, "dark_mode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->isDarkMode:Z

    .line 93
    const v1, 0x7f090096

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 94
    .local v1, "llContent":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v0}, Lcom/winlator/cmod/core/AppUtils;->getPreferredDialogWidth(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    const v2, 0x7f09007d

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->etTitle:Landroid/widget/EditText;

    .line 99
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->etTitle:Landroid/widget/EditText;

    iget-boolean v3, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->isDarkMode:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0800fd

    goto :goto_0

    :cond_0
    const v3, 0x7f0800fc

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 101
    const v2, 0x7f09015b

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->tvSavePath:Landroid/widget/TextView;

    .line 102
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->tvSavePath:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    const v2, 0x7f090035

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v2, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method private isPathValidForContainer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 197
    .local v0, "rootDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private synthetic lambda$createContentView$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->openFolderPicker()V

    goto :goto_0

    .line 108
    :cond_0
    const v0, 0x7f100222

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 110
    :goto_0
    return-void
.end method

.method private synthetic lambda$createContentView$2(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->etTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->saveManager:Lcom/winlator/cmod/saves/SaveManager;

    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v0, v2, v3}, Lcom/winlator/cmod/saves/SaveManager;->addSave(Ljava/lang/String;Ljava/lang/String;Lcom/winlator/cmod/container/Container;)V

    .line 118
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->activity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/winlator/cmod/MainActivity;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/winlator/cmod/MainActivity;

    invoke-virtual {v1}, Lcom/winlator/cmod/MainActivity;->onSaveAdded()V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 126
    :cond_1
    const v1, 0x7f1000f1

    invoke-static {p1, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 128
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0(Lcom/winlator/cmod/container/ContainerManager;Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "containerManager"    # Lcom/winlator/cmod/container/ContainerManager;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .line 57
    const v0, 0x7f0900e4

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 59
    .local v0, "sContainer":Landroid/widget/Spinner;
    iget-boolean v1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->isDarkMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0800f3

    goto :goto_0

    :cond_0
    const v1, 0x7f0800f2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 61
    invoke-direct {p0, v0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->loadContainerSpinner(Landroid/widget/Spinner;)V

    .line 65
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/winlator/cmod/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 67
    .local v1, "containerPosition":I
    if-ltz v1, :cond_1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 71
    .end local v1    # "containerPosition":I
    :cond_1
    return-void
.end method

.method private synthetic lambda$onActivityResult$3(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 186
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->updateSelectedPath(Ljava/lang/String;)V

    return-void
.end method

.method private loadContainerSpinner(Landroid/widget/Spinner;)V
    .locals 5
    .param p1, "sContainer"    # Landroid/widget/Spinner;

    .line 139
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v0

    .line 140
    .local v0, "containers":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/container/Container;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, "containerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/container/Container;

    .line 142
    .local v3, "container":Lcom/winlator/cmod/container/Container;
    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v3    # "container":Lcom/winlator/cmod/container/Container;
    goto :goto_0

    .line 145
    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 146
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 147
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 149
    iget-boolean v3, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->isDarkMode:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0800f3

    goto :goto_1

    :cond_1
    const v3, 0x7f0800f2

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 151
    new-instance v3, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$1;-><init>(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Ljava/util/List;)V

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 162
    return-void
.end method

.method private openFolderPicker()V
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 171
    .local v0, "rootDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, ".wine/drive_c/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "dynamicPath":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->activity:Landroid/app/Activity;

    const-class v4, Lcom/winlator/cmod/saves/CustomFilePickerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "initialDirectory"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v5, "isEditing"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    iget-object v3, v3, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    const-string v5, "editingPath"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 179
    return-void

    .line 166
    .end local v0    # "rootDir":Ljava/io/File;
    .end local v1    # "dynamicPath":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10012b

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 167
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 182
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 183
    const-string v0, "selectedDirectory"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returned Path from Picker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SaveSettingsDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->isPathValidForContainer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path selected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10012c

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 192
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public updateSelectedPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->selectedPath:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->tvSavePath:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->tvSavePath:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected Path Updated in UI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveSettingsDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method
