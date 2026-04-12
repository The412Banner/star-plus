.class public Lcom/winlator/cmod/contentdialog/SaveEditDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "SaveEditDialog.java"


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

.field private tvOriginalPath:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$MBs4GJjZh0nWBjgpPWSF_7u66Yw(Lcom/winlator/cmod/contentdialog/SaveEditDialog;Lcom/winlator/cmod/container/Container;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->lambda$createContentView$0(Lcom/winlator/cmod/container/Container;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nA0tCPBV2Gke3o76ljIKsIFFFAY(Lcom/winlator/cmod/contentdialog/SaveEditDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->lambda$onActivityResult$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/winlator/cmod/saves/SaveManager;Lcom/winlator/cmod/container/ContainerManager;Lcom/winlator/cmod/saves/Save;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "saveManager"    # Lcom/winlator/cmod/saves/SaveManager;
    .param p3, "containerManager"    # Lcom/winlator/cmod/container/ContainerManager;
    .param p4, "saveToEdit"    # Lcom/winlator/cmod/saves/Save;

    .line 41
    const v0, 0x7f0c00a6

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 42
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->activity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->saveManager:Lcom/winlator/cmod/saves/SaveManager;

    .line 44
    iput-object p3, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    .line 45
    iput-object p4, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    .line 46
    const v0, 0x7f1000b2

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->setTitle(I)V

    .line 47
    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->setIcon(I)V

    .line 49
    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->createContentView()V

    .line 50
    return-void
.end method

.method private createContentView()V
    .locals 6

    .line 53
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 57
    const-string v2, "dark_mode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->isDarkMode:Z

    .line 59
    const v1, 0x7f090096

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 60
    .local v1, "llContent":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v0}, Lcom/winlator/cmod/core/AppUtils;->getPreferredDialogWidth(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 62
    const v2, 0x7f09007d

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->etTitle:Landroid/widget/EditText;

    .line 65
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->etTitle:Landroid/widget/EditText;

    iget-boolean v3, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->isDarkMode:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0800fd

    goto :goto_0

    :cond_0
    const v3, 0x7f0800fc

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 67
    const v2, 0x7f090159

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->tvOriginalPath:Landroid/widget/TextView;

    .line 71
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->etTitle:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    invoke-virtual {v3}, Lcom/winlator/cmod/saves/Save;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->tvOriginalPath:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    iget-object v3, v3, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    iget-object v2, v2, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    iput-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->selectedPath:Ljava/lang/String;

    .line 77
    const v2, 0x7f0900e4

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 84
    .local v2, "sContainer":Landroid/widget/Spinner;
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    iget-object v4, v4, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 85
    .local v3, "containerPosition":I
    if-ltz v3, :cond_1

    .line 86
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    iget-object v4, v4, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    .line 103
    .local v4, "currentContainer":Lcom/winlator/cmod/container/Container;
    new-instance v5, Lcom/winlator/cmod/contentdialog/SaveEditDialog$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v4}, Lcom/winlator/cmod/contentdialog/SaveEditDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/contentdialog/SaveEditDialog;Lcom/winlator/cmod/container/Container;)V

    invoke-virtual {p0, v5}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method private isPathValidForContainer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 190
    .local v0, "rootDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private synthetic lambda$createContentView$0(Lcom/winlator/cmod/container/Container;)V
    .locals 4
    .param p1, "currentContainer"    # Lcom/winlator/cmod/container/Container;

    .line 104
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->etTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100178

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 108
    return-void

    .line 112
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->saveManager:Lcom/winlator/cmod/saves/SaveManager;

    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->selectedPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/winlator/cmod/saves/SaveManager;->updateSave(Lcom/winlator/cmod/saves/Save;Ljava/lang/String;Ljava/lang/String;Lcom/winlator/cmod/container/Container;)V

    .line 113
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->activity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/winlator/cmod/MainActivity;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/winlator/cmod/MainActivity;

    invoke-virtual {v1}, Lcom/winlator/cmod/MainActivity;->onSaveAdded()V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$onActivityResult$1(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 179
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->updateSelectedPath(Ljava/lang/String;)V

    return-void
.end method

.method private openFolderPicker()V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->selectedContainer:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 164
    .local v0, "rootDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, ".wine/drive_c/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "dynamicPath":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->activity:Landroid/app/Activity;

    const-class v4, Lcom/winlator/cmod/saves/CustomFilePickerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "initialDirectory"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v3, "isEditing"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    iget-object v3, v3, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    const-string v5, "editingPath"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    return-void

    .line 159
    .end local v0    # "rootDir":Ljava/io/File;
    .end local v1    # "dynamicPath":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10012b

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 160
    return-void
.end method


# virtual methods
.method public getSaveId()I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->saveToEdit:Lcom/winlator/cmod/saves/Save;

    iget v0, v0, Lcom/winlator/cmod/saves/Save;->id:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 175
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 176
    const-string v0, "selectedDirectory"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
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

    const-string v2, "SaveEditDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->isPathValidForContainer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/winlator/cmod/contentdialog/SaveEditDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/contentdialog/SaveEditDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 180
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

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10012c

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 185
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public updateSelectedPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->selectedPath:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected Path Updated in UI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveEditDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method
