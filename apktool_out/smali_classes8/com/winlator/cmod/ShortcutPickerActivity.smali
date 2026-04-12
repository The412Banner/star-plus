.class public Lcom/winlator/cmod/ShortcutPickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ShortcutPickerActivity.java"


# instance fields
.field private confirmButton:Landroid/widget/Button;

.field private currentDirectory:Ljava/io/File;

.field private fileAdapter:Lcom/winlator/cmod/saves/FileAdapter;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private upButton:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$-tj1rUxhSb47TDQkb5qrRre8rqI(Lcom/winlator/cmod/ShortcutPickerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ShortcutPickerActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JajKuufzHwP93tqkO4SRLw7L-es(Lcom/winlator/cmod/ShortcutPickerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ShortcutPickerActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sq1dj8nhmpMFh0kteR88pkMiG1M(Lcom/winlator/cmod/ShortcutPickerActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ShortcutPickerActivity;->onFileClicked(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v0, "resultIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->currentDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "selectedDirectory"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/winlator/cmod/ShortcutPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutPickerActivity;->finish()V

    .line 67
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->currentDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 71
    .local v0, "parentDirectory":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 72
    iput-object v0, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->currentDirectory:Ljava/io/File;

    .line 73
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->currentDirectory:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/winlator/cmod/ShortcutPickerActivity;->loadFiles(Ljava/io/File;)V

    .line 74
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->confirmButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method private loadFiles(Ljava/io/File;)V
    .locals 3
    .param p1, "directory"    # Ljava/io/File;

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 81
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lcom/winlator/cmod/saves/FileAdapter;

    new-instance v2, Lcom/winlator/cmod/ShortcutPickerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/ShortcutPickerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/ShortcutPickerActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/winlator/cmod/saves/FileAdapter;-><init>([Ljava/io/File;Lcom/winlator/cmod/saves/FileAdapter$OnFileClickListener;)V

    iput-object v1, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->fileAdapter:Lcom/winlator/cmod/saves/FileAdapter;

    .line 83
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->fileAdapter:Lcom/winlator/cmod/saves/FileAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->upButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 86
    return-void
.end method

.method private onFileClicked(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->currentDirectory:Ljava/io/File;

    .line 91
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->currentDirectory:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/winlator/cmod/ShortcutPickerActivity;->loadFiles(Ljava/io/File;)V

    .line 92
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->confirmButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f110009

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ShortcutPickerActivity;->setTheme(I)V

    .line 32
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ShortcutPickerActivity;->setContentView(I)V

    .line 35
    const v0, 0x7f0902f2

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ShortcutPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    const v0, 0x7f0901ea

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ShortcutPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->confirmButton:Landroid/widget/Button;

    .line 38
    const v0, 0x7f090393

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ShortcutPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->upButton:Landroid/widget/Button;

    .line 39
    const v0, 0x7f09015c

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ShortcutPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    .local v0, "pickerTitle":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f060038

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 42
    const v1, 0x7f0600db

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->confirmButton:Landroid/widget/Button;

    const v2, 0x7f0800fd

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 44
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->upButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "initialDirectory"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "initialDirectoryPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->currentDirectory:Ljava/io/File;

    .line 51
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isEditing"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 52
    .local v2, "isEditing":Z
    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "editingPath"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "editingPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 56
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->currentDirectory:Ljava/io/File;

    .line 60
    .end local v3    # "editingPath":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->currentDirectory:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/winlator/cmod/ShortcutPickerActivity;->loadFiles(Ljava/io/File;)V

    .line 62
    iget-object v3, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->confirmButton:Landroid/widget/Button;

    new-instance v4, Lcom/winlator/cmod/ShortcutPickerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/ShortcutPickerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/ShortcutPickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v3, p0, Lcom/winlator/cmod/ShortcutPickerActivity;->upButton:Landroid/widget/Button;

    new-instance v4, Lcom/winlator/cmod/ShortcutPickerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/ShortcutPickerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/ShortcutPickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method
