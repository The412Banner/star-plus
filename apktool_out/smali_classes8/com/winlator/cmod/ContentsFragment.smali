.class public Lcom/winlator/cmod/ContentsFragment;
.super Landroidx/fragment/app/Fragment;
.source "ContentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;
    }
.end annotation


# instance fields
.field private currentContentType:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

.field private emptyText:Landroid/view/View;

.field private isDarkMode:Z

.field private manager:Lcom/winlator/cmod/contents/ContentsManager;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private sContentType:Landroid/widget/Spinner;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$8Pgwj5Pbvetj6misxtiLQJRz5Ww(Lcom/winlator/cmod/ContentsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/ContentsFragment;->lambda$onCreateView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q8OsIsaQFWZR6nLT5fWCGovZ05c(Lcom/winlator/cmod/ContentsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContentsFragment;->lambda$onCreateView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cY50YaTaQ6A2_5JpBwymDqcg5WQ(Lcom/winlator/cmod/ContentsFragment;Landroid/content/Intent;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ContentsFragment;->lambda$onActivityResult$4(Landroid/content/Intent;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oacjvCxvA0W66ECM1P_Rte9TXv0(Lcom/winlator/cmod/ContentsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/ContentsFragment;->lambda$onResume$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rbzyOScqHOGd-uaLFzvY2Y3nhAg(Lcom/winlator/cmod/ContentsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContentsFragment;->lambda$onResume$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentContentType(Lcom/winlator/cmod/ContentsFragment;)Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContentsFragment;->currentContentType:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmanager(Lcom/winlator/cmod/ContentsFragment;)Lcom/winlator/cmod/contents/ContentsManager;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContentsFragment;->manager:Lcom/winlator/cmod/contents/ContentsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsContentType(Lcom/winlator/cmod/ContentsFragment;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContentsFragment;->sContentType:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentContentType(Lcom/winlator/cmod/ContentsFragment;Lcom/winlator/cmod/contents/ContentProfile$ContentType;)V
    .locals 0

    iput-object p1, p0, Lcom/winlator/cmod/ContentsFragment;->currentContentType:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadContentList(Lcom/winlator/cmod/ContentsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/ContentsFragment;->loadContentList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateContentsListView(Lcom/winlator/cmod/ContentsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/ContentsFragment;->updateContentsListView()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 54
    sget-object v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WINE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    iput-object v0, p0, Lcom/winlator/cmod/ContentsFragment;->currentContentType:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    return-void
.end method

.method private synthetic lambda$onActivityResult$4(Landroid/content/Intent;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;

    .line 231
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment;->manager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/winlator/cmod/contents/ContentsManager;->extraContentFile(Landroid/net/Uri;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V

    .line 232
    return-void
.end method

.method private synthetic lambda$onCreateView$2()V
    .locals 3

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0}, Lcom/winlator/cmod/ContentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 131
    return-void
.end method

.method private synthetic lambda$onCreateView$3(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 125
    invoke-virtual {p0}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f100098

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/ContentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f1001a6

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/ContentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    const v2, 0x7f100070

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/ContentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f1000fa

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/ContentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/ContentsFragment;)V

    .line 125
    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method private synthetic lambda$onResume$0(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment;->manager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/contents/ContentsManager;->setRemoteProfiles(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/winlator/cmod/ContentsFragment;->loadContentList()V

    .line 91
    return-void
.end method

.method private synthetic lambda$onResume$1()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment;->sp:Landroid/content/SharedPreferences;

    const-string v1, "downloadable_contents_url"

    const-string v2, "https://raw.githubusercontent.com/Xnick417x/Winlator-Bionic-Nightly-wcp/refs/heads/main/content.json"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "contentsURL":Ljava/lang/String;
    invoke-static {v0}, Lcom/winlator/cmod/contents/Downloader;->downloadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "json":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 87
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/ContentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1}, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/ContentsFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method private loadContentList()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment;->manager:Lcom/winlator/cmod/contents/ContentsManager;

    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->currentContentType:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contents/ContentsManager;->getProfiles(Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/util/List;

    move-result-object v0

    .line 242
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/contents/ContentProfile;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->emptyText:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->emptyText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;-><init>(Lcom/winlator/cmod/ContentsFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 250
    :goto_0
    return-void
.end method

.method private updateContentTypeSpinner(Landroid/widget/Spinner;)V
    .locals 6
    .param p1, "spinner"    # Landroid/widget/Spinner;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->values()[Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 145
    .local v4, "type":Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    invoke-virtual {v4}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v4    # "type":Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090009

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 149
    iget-boolean v1, p0, Lcom/winlator/cmod/ContentsFragment;->isDarkMode:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0800f3

    goto :goto_1

    :cond_1
    const v1, 0x7f0800f2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 151
    new-instance v1, Lcom/winlator/cmod/ContentsFragment$2;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/ContentsFragment$2;-><init>(Lcom/winlator/cmod/ContentsFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    return-void
.end method

.method private updateContentsListView()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment;->manager:Lcom/winlator/cmod/contents/ContentsManager;

    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->currentContentType:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contents/ContentsManager;->getProfiles(Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/contents/ContentProfile;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->emptyText:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 175
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 176
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    .line 177
    .local v0, "preloaderDialog":Lcom/winlator/cmod/core/PreloaderDialog;
    const v1, 0x7f100127

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;->showOnUiThread(I)V

    .line 179
    :try_start_0
    new-instance v1, Lcom/winlator/cmod/ContentsFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/winlator/cmod/ContentsFragment$3;-><init>(Lcom/winlator/cmod/ContentsFragment;Lcom/winlator/cmod/core/PreloaderDialog;)V

    .line 230
    .local v1, "callback":Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p3, v1}, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/ContentsFragment;Landroid/content/Intent;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1    # "callback":Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;
    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 235
    invoke-virtual {p0}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100262

    invoke-static {v2, v3}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 238
    .end local v0    # "preloaderDialog":Lcom/winlator/cmod/core/PreloaderDialog;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ContentsFragment;->setHasOptionsMenu(Z)V

    .line 63
    new-instance v1, Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/winlator/cmod/contents/ContentsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->manager:Lcom/winlator/cmod/contents/ContentsManager;

    .line 64
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->manager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {v1}, Lcom/winlator/cmod/contents/ContentsManager;->syncContents()V

    .line 65
    invoke-virtual {p0}, Lcom/winlator/cmod/ContentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->sp:Landroid/content/SharedPreferences;

    .line 68
    invoke-virtual {p0}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    const-string v2, "dark_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/winlator/cmod/ContentsFragment;->isDarkMode:Z

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 104
    const v0, 0x7f0c0035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    .local v0, "layout":Landroid/view/ViewGroup;
    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->sContentType:Landroid/widget/Spinner;

    .line 107
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->sContentType:Landroid/widget/Spinner;

    invoke-direct {p0, v1}, Lcom/winlator/cmod/ContentsFragment;->updateContentTypeSpinner(Landroid/widget/Spinner;)V

    .line 108
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->sContentType:Landroid/widget/Spinner;

    new-instance v2, Lcom/winlator/cmod/ContentsFragment$1;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/ContentsFragment$1;-><init>(Lcom/winlator/cmod/ContentsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 121
    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/ContentsFragment;->emptyText:Landroid/view/View;

    .line 123
    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, "btInstallContent":Landroid/view/View;
    new-instance v2, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/ContentsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v2, 0x7f0900bb

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/winlator/cmod/ContentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    iget-object v2, p0, Lcom/winlator/cmod/ContentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/winlator/cmod/ContentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 136
    iget-object v2, p0, Lcom/winlator/cmod/ContentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/DividerItemDecoration;

    iget-object v4, p0, Lcom/winlator/cmod/ContentsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 137
    invoke-direct {p0}, Lcom/winlator/cmod/ContentsFragment;->loadContentList()V

    .line 139
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->clear(Ljava/io/File;)Z

    .line 75
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/ContentsFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 97
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/winlator/cmod/ContentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f100072

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 99
    return-void
.end method
