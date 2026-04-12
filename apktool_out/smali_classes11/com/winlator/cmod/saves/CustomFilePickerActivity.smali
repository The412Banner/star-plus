.class public Lcom/winlator/cmod/saves/CustomFilePickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CustomFilePickerActivity.java"


# instance fields
.field private confirmButton:Landroid/widget/Button;

.field private currentDirectory:Ljava/io/File;

.field private fileAdapter:Lcom/winlator/cmod/saves/FileAdapter;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private upButton:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$9aOFHsgxN2rk7eoTEby-4PiMYog(Lcom/winlator/cmod/saves/CustomFilePickerActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->onFileClicked(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J6VtCvAURlQp8p0WpwqV5PdQ1Qk(Lcom/winlator/cmod/saves/CustomFilePickerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jX9DpFjfLXNhC-VTP8HBINeQcBg(Lcom/winlator/cmod/saves/CustomFilePickerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, "resultIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->currentDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "selectedDirectory"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->finish()V

    .line 87
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->currentDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 91
    .local v0, "parentDirectory":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 92
    iput-object v0, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->currentDirectory:Ljava/io/File;

    .line 93
    iget-object v1, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->currentDirectory:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->loadFiles(Ljava/io/File;)V

    .line 94
    iget-object v1, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->confirmButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    :cond_0
    return-void
.end method

.method private loadFiles(Ljava/io/File;)V
    .locals 3
    .param p1, "directory"    # Ljava/io/File;

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 102
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Lcom/winlator/cmod/saves/FileAdapter;

    new-instance v2, Lcom/winlator/cmod/saves/CustomFilePickerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/saves/CustomFilePickerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/saves/CustomFilePickerActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/winlator/cmod/saves/FileAdapter;-><init>([Ljava/io/File;Lcom/winlator/cmod/saves/FileAdapter$OnFileClickListener;)V

    iput-object v1, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->fileAdapter:Lcom/winlator/cmod/saves/FileAdapter;

    .line 104
    iget-object v1, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->fileAdapter:Lcom/winlator/cmod/saves/FileAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->upButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    return-void
.end method

.method private onFileClicked(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 110
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iput-object p1, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->currentDirectory:Ljava/io/File;

    .line 112
    iget-object v0, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->currentDirectory:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->loadFiles(Ljava/io/File;)V

    .line 113
    iget-object v0, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->confirmButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "dark_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 37
    .local v1, "isDarkMode":Z
    if-eqz v1, :cond_0

    .line 38
    const v3, 0x7f110009

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->setTheme(I)V

    goto :goto_0

    .line 40
    :cond_0
    const v3, 0x7f110008

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->setTheme(I)V

    .line 44
    :goto_0
    const v3, 0x7f0c001f

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->setContentView(I)V

    .line 47
    const v3, 0x7f0902f2

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    iget-object v3, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 49
    const v3, 0x7f0901ea

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->confirmButton:Landroid/widget/Button;

    .line 50
    const v3, 0x7f090393

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->upButton:Landroid/widget/Button;

    .line 51
    const v3, 0x7f09015c

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    .local v3, "pickerTitle":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 55
    iget-object v4, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v5, 0x7f060038

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 56
    const v4, 0x7f0600db

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object v4, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->confirmButton:Landroid/widget/Button;

    const v5, 0x7f0800fd

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 58
    iget-object v4, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->upButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "initialDirectory"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "initialDirectoryPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->currentDirectory:Ljava/io/File;

    .line 71
    invoke-virtual {p0}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "isEditing"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 72
    .local v2, "isEditing":Z
    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "editingPath"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "editingPath":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 76
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->currentDirectory:Ljava/io/File;

    .line 80
    .end local v5    # "editingPath":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->currentDirectory:Ljava/io/File;

    invoke-direct {p0, v5}, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->loadFiles(Ljava/io/File;)V

    .line 82
    iget-object v5, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->confirmButton:Landroid/widget/Button;

    new-instance v6, Lcom/winlator/cmod/saves/CustomFilePickerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/winlator/cmod/saves/CustomFilePickerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/saves/CustomFilePickerActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v5, p0, Lcom/winlator/cmod/saves/CustomFilePickerActivity;->upButton:Landroid/widget/Button;

    new-instance v6, Lcom/winlator/cmod/saves/CustomFilePickerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/winlator/cmod/saves/CustomFilePickerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/saves/CustomFilePickerActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method
