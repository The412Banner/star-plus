.class public Lcom/winlator/cmod/AdrenotoolsFragment;
.super Landroidx/fragment/app/Fragment;
.source "AdrenotoolsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;
    }
.end annotation


# instance fields
.field private adrenotoolsManager:Lcom/winlator/cmod/contents/AdrenotoolsManager;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$QmM-kYbWu1woQTgaklGsmv5VDKM(Lcom/winlator/cmod/AdrenotoolsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/AdrenotoolsFragment;->lambda$onCreateView$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZrlnBNyRSaEAxSmI9daO_wC2Cws(Lcom/winlator/cmod/AdrenotoolsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/AdrenotoolsFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadrenotoolsManager(Lcom/winlator/cmod/AdrenotoolsFragment;)Lcom/winlator/cmod/contents/AdrenotoolsManager;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/AdrenotoolsFragment;->adrenotoolsManager:Lcom/winlator/cmod/contents/AdrenotoolsManager;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0()V
    .locals 3

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0}, Lcom/winlator/cmod/AdrenotoolsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 48
    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Lcom/winlator/cmod/AdrenotoolsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f100121

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/AdrenotoolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f100122

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/AdrenotoolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/AdrenotoolsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/AdrenotoolsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/AdrenotoolsFragment;)V

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 61
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 62
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 63
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/winlator/cmod/AdrenotoolsFragment;->adrenotoolsManager:Lcom/winlator/cmod/contents/AdrenotoolsManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->installDriver(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "driver":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/winlator/cmod/AdrenotoolsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;

    invoke-virtual {v2, v1}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->addItem(Ljava/lang/String;)V

    .line 67
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "driver":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Lcom/winlator/cmod/contents/AdrenotoolsManager;

    invoke-virtual {p0}, Lcom/winlator/cmod/AdrenotoolsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/contents/AdrenotoolsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/AdrenotoolsFragment;->adrenotoolsManager:Lcom/winlator/cmod/contents/AdrenotoolsManager;

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    const v0, 0x7f0c0022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    .local v0, "layout":Landroid/view/ViewGroup;
    const v1, 0x7f0900bb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/winlator/cmod/AdrenotoolsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    iget-object v1, p0, Lcom/winlator/cmod/AdrenotoolsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/winlator/cmod/AdrenotoolsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 39
    iget-object v1, p0, Lcom/winlator/cmod/AdrenotoolsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/DividerItemDecoration;

    iget-object v3, p0, Lcom/winlator/cmod/AdrenotoolsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 40
    iget-object v1, p0, Lcom/winlator/cmod/AdrenotoolsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;

    iget-object v3, p0, Lcom/winlator/cmod/AdrenotoolsFragment;->adrenotoolsManager:Lcom/winlator/cmod/contents/AdrenotoolsManager;

    invoke-virtual {v3}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->enumarateInstalledDrivers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;-><init>(Lcom/winlator/cmod/AdrenotoolsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 41
    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "btInstallDriver":Landroid/view/View;
    new-instance v2, Lcom/winlator/cmod/AdrenotoolsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/AdrenotoolsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/AdrenotoolsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/winlator/cmod/AdrenotoolsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f100024

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 57
    return-void
.end method
