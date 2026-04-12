.class Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContainersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/ContainersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainersAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/winlator/cmod/container/Container;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/winlator/cmod/ContainersFragment;


# direct methods
.method public static synthetic $r8$lambda$4cUG_9VuVGMhwp0pZsngkHXuFVU(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Lcom/winlator/cmod/container/Container;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->lambda$onBindViewHolder$1(Lcom/winlator/cmod/container/Container;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DaBQbiB_9cWYr-WC-46ZiEoYZ4Q(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->lambda$showToast$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OOYrlq7Irk42VuOG5MTqfZlx294(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->lambda$showListItemMenu$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$a3d9lAWJyzZ5EnprvVyqwKpKOFI(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Lcom/winlator/cmod/container/Container;Landroid/content/Context;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->lambda$showListItemMenu$6(Lcom/winlator/cmod/container/Container;Landroid/content/Context;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bRor1AnCdMmSOHPvUGuzx16zCgo(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->lambda$showListItemMenu$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$b_DMt2IsD962p5VXT70Axm6wSOc(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Lcom/winlator/cmod/container/Container;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->lambda$showListItemMenu$3(Lcom/winlator/cmod/container/Container;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cN1Yz-hH_iat-CcjtTi_MryUCcs(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Lcom/winlator/cmod/container/Container;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->lambda$showListItemMenu$5(Lcom/winlator/cmod/container/Container;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pcuK8e4hN8AxPBHasAz7KQw2FQc(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Lcom/winlator/cmod/container/Container;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->lambda$onBindViewHolder$0(Lcom/winlator/cmod/container/Container;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yfXFmzAAmcQcKWZqfxVhwKba664(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->lambda$exportContainer$7(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/ContainersFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/winlator/cmod/container/Container;",
            ">;)V"
        }
    .end annotation

    .line 274
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/container/Container;>;"
    iput-object p1, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->data:Ljava/util/List;

    .line 276
    return-void
.end method

.method private exportContainer(Lcom/winlator/cmod/container/Container;)V
    .locals 3
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;

    .line 368
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Winlator/Backups/Containers"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    .local v0, "backupDir":Ljava/io/File;
    iget-object v1, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-static {v1}, Lcom/winlator/cmod/ContainersFragment;->-$$Nest$fgetpreloaderDialog(Lcom/winlator/cmod/ContainersFragment;)Lcom/winlator/cmod/core/PreloaderDialog;

    move-result-object v1

    const v2, 0x7f1000d7

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/core/PreloaderDialog;->show(I)V

    .line 371
    iget-object v1, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-static {v1}, Lcom/winlator/cmod/ContainersFragment;->-$$Nest$fgetmanager(Lcom/winlator/cmod/ContainersFragment;)Lcom/winlator/cmod/container/ContainerManager;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda8;-><init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Ljava/io/File;)V

    invoke-virtual {v1, p1, v2}, Lcom/winlator/cmod/container/ContainerManager;->exportContainer(Lcom/winlator/cmod/container/Container;Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method private synthetic lambda$exportContainer$7(Ljava/io/File;)V
    .locals 2
    .param p1, "backupDir"    # Ljava/io/File;

    .line 372
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContainersFragment;->-$$Nest$fgetpreloaderDialog(Lcom/winlator/cmod/ContainersFragment;)Lcom/winlator/cmod/core/PreloaderDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->close()V

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container exported successfully to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->showToast(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/winlator/cmod/container/Container;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/winlator/cmod/container/Container;
    .param p2, "view"    # Landroid/view/View;

    .line 296
    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->runContainer(Lcom/winlator/cmod/container/Container;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/winlator/cmod/container/Container;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/winlator/cmod/container/Container;
    .param p2, "view"    # Landroid/view/View;

    .line 298
    invoke-direct {p0, p2, p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->showListItemMenu(Landroid/view/View;Lcom/winlator/cmod/container/Container;)V

    return-void
.end method

.method private synthetic lambda$showListItemMenu$2()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContainersFragment;->-$$Nest$fgetpreloaderDialog(Lcom/winlator/cmod/ContainersFragment;)Lcom/winlator/cmod/core/PreloaderDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->close()V

    .line 338
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContainersFragment;->-$$Nest$mloadContainersList(Lcom/winlator/cmod/ContainersFragment;)V

    .line 339
    return-void
.end method

.method private synthetic lambda$showListItemMenu$3(Lcom/winlator/cmod/container/Container;)V
    .locals 2
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;

    .line 335
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContainersFragment;->-$$Nest$fgetpreloaderDialog(Lcom/winlator/cmod/ContainersFragment;)Lcom/winlator/cmod/core/PreloaderDialog;

    move-result-object v0

    const v1, 0x7f1000ac

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;->show(I)V

    .line 336
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContainersFragment;->-$$Nest$fgetmanager(Lcom/winlator/cmod/ContainersFragment;)Lcom/winlator/cmod/container/ContainerManager;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;)V

    invoke-virtual {v0, p1, v1}, Lcom/winlator/cmod/container/ContainerManager;->duplicateContainerAsync(Lcom/winlator/cmod/container/Container;Ljava/lang/Runnable;)V

    .line 340
    return-void
.end method

.method private synthetic lambda$showListItemMenu$4()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContainersFragment;->-$$Nest$fgetpreloaderDialog(Lcom/winlator/cmod/ContainersFragment;)Lcom/winlator/cmod/core/PreloaderDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->close()V

    .line 351
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContainersFragment;->-$$Nest$mloadContainersList(Lcom/winlator/cmod/ContainersFragment;)V

    .line 352
    return-void
.end method

.method private synthetic lambda$showListItemMenu$5(Lcom/winlator/cmod/container/Container;Landroid/content/Context;)V
    .locals 3
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;
    .param p2, "context"    # Landroid/content/Context;

    .line 344
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContainersFragment;->-$$Nest$fgetpreloaderDialog(Lcom/winlator/cmod/ContainersFragment;)Lcom/winlator/cmod/core/PreloaderDialog;

    move-result-object v0

    const v1, 0x7f10020d

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;->show(I)V

    .line 345
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContainersFragment;->-$$Nest$fgetmanager(Lcom/winlator/cmod/ContainersFragment;)Lcom/winlator/cmod/container/ContainerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/container/ContainerManager;->loadShortcuts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/container/Shortcut;

    .line 346
    .local v1, "shortcut":Lcom/winlator/cmod/container/Shortcut;
    iget-object v2, v1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    if-ne v2, p1, :cond_0

    .line 347
    invoke-static {p2, v1}, Lcom/winlator/cmod/ShortcutsFragment;->disableShortcutOnScreen(Landroid/content/Context;Lcom/winlator/cmod/container/Shortcut;)V

    .line 348
    .end local v1    # "shortcut":Lcom/winlator/cmod/container/Shortcut;
    :cond_0
    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContainersFragment;->-$$Nest$fgetmanager(Lcom/winlator/cmod/ContainersFragment;)Lcom/winlator/cmod/container/ContainerManager;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;)V

    invoke-virtual {v0, p1, v1}, Lcom/winlator/cmod/container/ContainerManager;->removeContainerAsync(Lcom/winlator/cmod/container/Container;Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method private synthetic lambda$showListItemMenu$6(Lcom/winlator/cmod/container/Container;Landroid/content/Context;Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menuItem"    # Landroid/view/MenuItem;

    .line 324
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Lcom/winlator/cmod/container/Container;Landroid/content/Context;)V

    const v2, 0x7f10009b

    invoke-static {v0, v2, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 354
    goto :goto_0

    .line 356
    :pswitch_1
    new-instance v0, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;

    iget-object v1, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ContainersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;-><init>(Landroid/app/Activity;Lcom/winlator/cmod/container/Container;)V

    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;->show()V

    .line 357
    goto :goto_0

    .line 359
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->exportContainer(Lcom/winlator/cmod/container/Container;)V

    goto :goto_0

    .line 326
    :pswitch_3
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ContainersFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 327
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 328
    const v2, 0x7f010025

    const v3, 0x7f010026

    const v4, 0x7f010022

    const v5, 0x7f010029

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 329
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/ContainerDetailFragment;

    iget v3, p1, Lcom/winlator/cmod/container/Container;->id:I

    invoke-direct {v2, v3}, Lcom/winlator/cmod/ContainerDetailFragment;-><init>(I)V

    .line 330
    const v3, 0x7f090084

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 332
    goto :goto_0

    .line 334
    .end local v0    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :pswitch_4
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Lcom/winlator/cmod/container/Container;)V

    const v2, 0x7f100092

    invoke-static {v0, v2, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 341
    nop

    .line 362
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x7f0901ed
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$showToast$8(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ContainersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 381
    return-void
.end method

.method private runContainer(Lcom/winlator/cmod/container/Container;)V
    .locals 4
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;

    .line 307
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 308
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/cmod/XrActivity;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "container_id"

    iget v3, p1, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    iget-object v2, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-virtual {v2}, Lcom/winlator/cmod/ContainersFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ContainersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p1, Lcom/winlator/cmod/container/Container;->id:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/winlator/cmod/XrActivity;->openIntent(Landroid/app/Activity;ILjava/lang/String;)V

    .line 315
    :goto_0
    return-void
.end method

.method private showListItemMenu(Landroid/view/View;Lcom/winlator/cmod/container/Container;)V
    .locals 4
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "container"    # Lcom/winlator/cmod/container/Container;

    .line 318
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 319
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 320
    .local v1, "listItemMenu":Landroid/widget/PopupMenu;
    const/high16 v2, 0x7f0d0000

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 321
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setForceShowIcon(Z)V

    .line 323
    :cond_0
    new-instance v2, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, v0}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Lcom/winlator/cmod/container/Container;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 364
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 365
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ContainersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->this$0:Lcom/winlator/cmod/ContainersFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ContainersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 383
    :cond_0
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 256
    check-cast p1, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->onBindViewHolder(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 292
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/container/Container;

    .line 293
    .local v0, "item":Lcom/winlator/cmod/container/Container;
    invoke-static {p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->-$$Nest$fgetimageView(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f08011d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    invoke-static {p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->-$$Nest$fgettitle(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-static {p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->-$$Nest$fgetrunButton(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Lcom/winlator/cmod/container/Container;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-static {p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->-$$Nest$fgetmenuButton(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Lcom/winlator/cmod/container/Container;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 280
    new-instance v0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c002c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;-><init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Landroid/view/View;Lcom/winlator/cmod/ContainersFragment-IA;)V

    return-object v0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 256
    check-cast p1, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;->onViewRecycled(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;

    .line 285
    invoke-static {p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->-$$Nest$fgetrunButton(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-static {p1}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->-$$Nest$fgetmenuButton(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 288
    return-void
.end method
