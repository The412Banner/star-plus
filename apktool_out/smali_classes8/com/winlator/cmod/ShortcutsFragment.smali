.class public Lcom/winlator/cmod/ShortcutsFragment;
.super Landroidx/fragment/app/Fragment;
.source "ShortcutsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;

.field public curGridType:I

.field public curListType:I

.field public curSortType:I

.field private currentDialog:Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;

.field private emptyTextView:Landroid/widget/TextView;

.field private manager:Lcom/winlator/cmod/container/ContainerManager;

.field private prefs:Landroid/content/SharedPreferences;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private searchText:Ljava/lang/String;

.field private shortcutContainer:Lcom/winlator/cmod/container/Container;

.field private sortItem:Landroid/view/MenuItem;

.field private final sortTypeText:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$9dEnrzZUpK4_Tykbq_zYhbEgxzA(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Container;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ShortcutsFragment;->lambda$onOptionsItemSelected$0(Lcom/winlator/cmod/container/Container;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EF1037MYrqsREqjVtxdnwNyUBbk(Lcom/winlator/cmod/ShortcutsFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ShortcutsFragment;->lambda$showSearchDialog$1(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VMaUpX3bH6lMniHOyuy1dGQOJJI(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ShortcutsFragment;->lambda$loadShortcutsList$2(Lcom/winlator/cmod/container/Shortcut;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zwrl_2r9nsXp2QEZWxgcVoTBIz4(Lcom/winlator/cmod/ShortcutsFragment;Landroid/content/SharedPreferences;Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/contentdialog/ContentDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/ShortcutsFragment;->lambda$showShortcutProperties$11(Landroid/content/SharedPreferences;Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/contentdialog/ContentDialog;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmanager(Lcom/winlator/cmod/ShortcutsFragment;)Lcom/winlator/cmod/container/ContainerManager;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ShortcutsFragment;->manager:Lcom/winlator/cmod/container/ContainerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddShortcutToScreen(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ShortcutsFragment;->addShortcutToScreen(Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexportShortcut(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ShortcutsFragment;->exportShortcut(Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunFromShortcut(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ShortcutsFragment;->runFromShortcut(Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowContainerSelectionDialog(Lcom/winlator/cmod/ShortcutsFragment;Ljava/util/ArrayList;Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ShortcutsFragment;->showContainerSelectionDialog(Ljava/util/ArrayList;Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowShortcutProperties(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ShortcutsFragment;->showShortcutProperties(Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowShortcutSettings(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ShortcutsFragment;->showShortcutSettings(Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 69
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Container Id"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "Path"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "Playtime"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "Play Count"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "Last Play Date"

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment;->sortTypeText:[Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment;->searchText:Ljava/lang/String;

    .line 81
    iput v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->curSortType:I

    .line 82
    iput v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->curGridType:I

    .line 83
    iput v3, p0, Lcom/winlator/cmod/ShortcutsFragment;->curListType:I

    return-void
.end method

.method private addShortcutToScreen(Lcom/winlator/cmod/container/Shortcut;)V
    .locals 9
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 435
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 436
    .local v0, "sm":Landroid/content/pm/ShortcutManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    iget-object v3, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    iget v5, v1, Lcom/winlator/cmod/container/Container;->id:I

    iget-object v1, p1, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/winlator/cmod/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v7

    const-string v1, "uuid"

    invoke-virtual {p1, v1}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/winlator/cmod/ShortcutsFragment;->buildScreenShortCut(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 439
    :cond_0
    return-void
.end method

.method private buildScreenShortCut(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "longLabel"    # Ljava/lang/String;
    .param p3, "cId"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .param p6, "uuid"    # Ljava/lang/String;

    .line 427
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v1, "container_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    const-string v1, "shortcut_path"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    new-instance v1, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p6}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    return-object v1
.end method

.method public static disableShortcutOnScreen(Landroid/content/Context;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 442
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 443
    .local v0, "sm":Landroid/content/pm/ShortcutManager;
    :try_start_0
    const-string v1, "uuid"

    invoke-virtual {p1, v1}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Unavailable"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 444
    :goto_0
    return-void
.end method

.method private exportShortcut(Lcom/winlator/cmod/container/Shortcut;)V
    .locals 8
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 382
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 383
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "shortcuts_export_path_uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "uriString":Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "Winlator/Shortcuts"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    nop

    .line 387
    .local v2, "shortcutsDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 388
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 389
    .local v3, "exportFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    iget v6, v6, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exported to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 389
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "uriString":Ljava/lang/String;
    .end local v2    # "shortcutsDir":Ljava/io/File;
    .end local v3    # "exportFile":Ljava/io/File;
    .end local p1    # "shortcut":Lcom/winlator/cmod/container/Shortcut;
    :goto_1
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 392
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v1    # "uriString":Ljava/lang/String;
    .restart local v2    # "shortcutsDir":Ljava/io/File;
    .restart local v3    # "exportFile":Ljava/io/File;
    .restart local p1    # "shortcut":Lcom/winlator/cmod/container/Shortcut;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v5, "ShortcutsFragment"

    const-string v6, "Export failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private exportShortcutToFrontend(Lcom/winlator/cmod/container/Shortcut;)V
    .locals 7
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 396
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 397
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "frontend_export_uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "uriString":Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "Winlator/Frontend"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    nop

    .line 400
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 402
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    .local v3, "exportFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    iget v6, v6, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Frontend Shortcut Exported!"

    invoke-static {v5, v6}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 403
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "uriString":Ljava/lang/String;
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "exportFile":Ljava/io/File;
    .end local p1    # "shortcut":Lcom/winlator/cmod/container/Shortcut;
    :goto_1
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 406
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "sp":Landroid/content/SharedPreferences;
    .restart local v1    # "uriString":Ljava/lang/String;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v3    # "exportFile":Ljava/io/File;
    .restart local p1    # "shortcut":Lcom/winlator/cmod/container/Shortcut;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v5, "ShortcutsFragment"

    const-string v6, "Frontend Export failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private handleManualShortcutAddition(Landroid/net/Uri;)V
    .locals 10
    .param p1, "selectedFile"    # Landroid/net/Uri;

    .line 225
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "path":Ljava/lang/String;
    const-string v1, ".exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "/document/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->shortcutContainer:Lcom/winlator/cmod/container/Container;

    if-nez v1, :cond_0

    return-void

    .line 228
    :cond_0
    const-string v1, "primary:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "D:"

    goto :goto_0

    :cond_1
    const-string v1, "/imagefs/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Z:"

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 229
    .local v1, "driveLetter":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_3

    .line 230
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Wrong path! Can\'t detect drive!"

    invoke-static {v2, v3}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 231
    return-void

    .line 234
    :cond_3
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/winlator/cmod/ShortcutsFragment;->queryName(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "nameWoutExe":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Desktop Entry]\nName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nExec=wine "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nType=Application"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "desktopContent":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/winlator/cmod/ShortcutsFragment;->shortcutContainer:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v7}, Lcom/winlator/cmod/container/Container;->getDesktopDir()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".desktop"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .local v5, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->loadShortcutsList()V

    .line 241
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Shortcut created!"

    invoke-static {v6, v7}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    .end local v5    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 238
    .restart local v5    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "driveLetter":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "nameWoutExe":Ljava/lang/String;
    .end local v4    # "desktopContent":Ljava/lang/String;
    .end local p1    # "selectedFile":Landroid/net/Uri;
    :goto_1
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 242
    .end local v5    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "driveLetter":Ljava/lang/String;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "nameWoutExe":Ljava/lang/String;
    .restart local v4    # "desktopContent":Ljava/lang/String;
    .restart local p1    # "selectedFile":Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 243
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "ShortcutsFragment"

    const-string v7, "Creation failed"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v1    # "driveLetter":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "nameWoutExe":Ljava/lang/String;
    .end local v4    # "desktopContent":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Please select an .exe file!"

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 246
    :goto_3
    return-void
.end method

.method private synthetic lambda$loadShortcutsList$2(Lcom/winlator/cmod/container/Shortcut;)Z
    .locals 2
    .param p1, "s"    # Lcom/winlator/cmod/container/Shortcut;

    .line 194
    iget-object v0, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->searchText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$loadShortcutsList$3(Lcom/winlator/cmod/container/Shortcut;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Lcom/winlator/cmod/container/Shortcut;

    .line 198
    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$loadShortcutsList$4(Lcom/winlator/cmod/container/Shortcut;)Ljava/lang/Integer;
    .locals 1
    .param p0, "s"    # Lcom/winlator/cmod/container/Shortcut;

    .line 199
    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    iget v0, v0, Lcom/winlator/cmod/container/Container;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadShortcutsList$5(Lcom/winlator/cmod/container/Shortcut;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Lcom/winlator/cmod/container/Shortcut;

    .line 200
    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$loadShortcutsList$6(Landroid/content/SharedPreferences;Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/container/Shortcut;)I
    .locals 7
    .param p0, "playtimePrefs"    # Landroid/content/SharedPreferences;
    .param p1, "s1"    # Lcom/winlator/cmod/container/Shortcut;
    .param p2, "s2"    # Lcom/winlator/cmod/container/Shortcut;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_playtime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$loadShortcutsList$7(Landroid/content/SharedPreferences;Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/container/Shortcut;)I
    .locals 5
    .param p0, "playtimePrefs"    # Landroid/content/SharedPreferences;
    .param p1, "s1"    # Lcom/winlator/cmod/container/Shortcut;
    .param p2, "s2"    # Lcom/winlator/cmod/container/Shortcut;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_play_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$loadShortcutsList$8(Landroid/content/SharedPreferences;Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/container/Shortcut;)I
    .locals 7
    .param p0, "playtimePrefs"    # Landroid/content/SharedPreferences;
    .param p1, "s1"    # Lcom/winlator/cmod/container/Shortcut;
    .param p2, "s2"    # Lcom/winlator/cmod/container/Shortcut;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_play_date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$loadShortcutsList$9(Lcom/winlator/cmod/container/Shortcut;)Z
    .locals 1
    .param p0, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 206
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private synthetic lambda$onOptionsItemSelected$0(Lcom/winlator/cmod/container/Container;)V
    .locals 2
    .param p1, "selected"    # Lcom/winlator/cmod/container/Container;

    .line 131
    iput-object p1, p0, Lcom/winlator/cmod/ShortcutsFragment;->shortcutContainer:Lcom/winlator/cmod/container/Container;

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/16 v1, 0x1e61

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/ShortcutsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 136
    return-void
.end method

.method static synthetic lambda$showContainerSelectionDialog$10(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "listener"    # Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;
    .param p1, "containers"    # Ljava/util/ArrayList;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "w"    # I

    .line 366
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/container/Container;

    invoke-interface {p0, v0}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;->onContainerSelected(Lcom/winlator/cmod/container/Container;)V

    return-void
.end method

.method private synthetic lambda$showSearchDialog$1(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "w"    # I

    .line 171
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment;->searchText:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->loadShortcutsList()V

    .line 173
    return-void
.end method

.method private synthetic lambda$showShortcutProperties$11(Landroid/content/SharedPreferences;Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/contentdialog/ContentDialog;Landroid/view/View;)V
    .locals 3
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;
    .param p3, "dialog"    # Lcom/winlator/cmod/contentdialog/ContentDialog;
    .param p4, "v"    # Landroid/view/View;

    .line 419
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_playtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_play_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 420
    invoke-virtual {p3}, Lcom/winlator/cmod/contentdialog/ContentDialog;->dismiss()V

    .line 421
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->loadShortcutsList()V

    .line 422
    return-void
.end method

.method private queryName(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 249
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 250
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "name":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 253
    return-object v1

    .line 255
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string v1, "Unknown"

    return-object v1
.end method

.method private runFromShortcut(Lcom/winlator/cmod/container/Shortcut;)V
    .locals 4
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 370
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 371
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/cmod/XrActivity;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    iget v2, v2, Lcom/winlator/cmod/container/Container;->id:I

    const-string v3, "container_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    iget-object v2, p1, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shortcut_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v2, "shortcut_name"

    iget-object v3, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v2, "0"

    const-string v3, "disableXinput"

    invoke-virtual {p1, v3, v2}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 378
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    iget v1, v1, Lcom/winlator/cmod/container/Container;->id:I

    iget-object v2, p1, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/XrActivity;->openIntent(Landroid/app/Activity;ILjava/lang/String;)V

    .line 379
    :goto_0
    return-void
.end method

.method private showContainerSelectionDialog(Ljava/util/ArrayList;Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/container/Container;",
            ">;",
            "Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;",
            ")V"
        }
    .end annotation

    .line 364
    .local p1, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/container/Container;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 365
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Select Container"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2, p1}, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 367
    return-void
.end method

.method private showSearchDialog()V
    .locals 4

    .line 165
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "input":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->searchText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    const-string v2, "Search Shortcuts"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/ShortcutsFragment;Landroid/widget/EditText;)V

    .line 170
    const-string v3, "Search"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 174
    const-string v2, "Cancel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 176
    return-void
.end method

.method private showShortcutProperties(Lcom/winlator/cmod/container/Shortcut;)V
    .locals 9
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 410
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "playtime_stats"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 411
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_playtime"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 412
    .local v3, "time":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "_play_count"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 414
    .local v1, "count":I
    new-instance v2, Lcom/winlator/cmod/contentdialog/ContentDialog;

    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c00b1

    invoke-direct {v2, v5, v6}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 415
    .local v2, "dialog":Lcom/winlator/cmod/contentdialog/ContentDialog;
    const-string v5, "Properties"

    invoke-virtual {v2, v5}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 416
    const v5, 0x7f0902da

    invoke-virtual {v2, v5}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Played: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    const v5, 0x7f0902db

    invoke-virtual {v2, v5}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Playtime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v7, 0xea60

    div-long v7, v3, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    const v5, 0x7f0902f6

    invoke-virtual {v2, v5}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v0, p1, v2}, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/ShortcutsFragment;Landroid/content/SharedPreferences;Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/contentdialog/ContentDialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    invoke-virtual {v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->show()V

    .line 424
    return-void
.end method

.method private showShortcutSettings(Lcom/winlator/cmod/container/Shortcut;)V
    .locals 1
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 459
    new-instance v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;

    invoke-direct {v0, p0, p1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;-><init>(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V

    iput-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment;->currentDialog:Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;

    .line 460
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment;->currentDialog:Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->show()V

    .line 461
    return-void
.end method

.method private updateRecyclerLayout()V
    .locals 5

    .line 179
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 180
    .local v0, "orientation":I
    iget v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->curGridType:I

    const/4 v2, 0x1

    if-lez v1, :cond_3

    .line 181
    iget v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->curGridType:I

    const/4 v3, 0x5

    if-ne v1, v2, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const/4 v3, 0x3

    :cond_2
    :goto_0
    move v1, v3

    .line 182
    .local v1, "spanCount":I
    iget-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 183
    .end local v1    # "spanCount":I
    goto :goto_1

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 185
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 187
    :goto_1
    return-void
.end method


# virtual methods
.method public loadShortcutsList()V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment;->manager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/ContainerManager;->loadShortcuts()Ljava/util/ArrayList;

    move-result-object v0

    .line 191
    .local v0, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/container/Shortcut;>;"
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "playtime_stats"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 193
    .local v1, "playtimePrefs":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->searchText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    new-instance v2, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/ShortcutsFragment;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 197
    :cond_0
    iget v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->curSortType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    new-instance v2, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda11;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    goto :goto_0

    .line 202
    :pswitch_1
    new-instance v2, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda10;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    goto :goto_0

    .line 201
    :pswitch_2
    new-instance v2, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda9;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    goto :goto_0

    .line 200
    :pswitch_3
    new-instance v2, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    goto :goto_0

    .line 199
    :pswitch_4
    new-instance v2, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    goto :goto_0

    .line 198
    :pswitch_5
    new-instance v2, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 206
    :goto_0
    new-instance v2, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 208
    new-instance v2, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;-><init>(Lcom/winlator/cmod/ShortcutsFragment;Ljava/util/List;)V

    iput-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->adapter:Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;

    .line 209
    iget-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/winlator/cmod/ShortcutsFragment;->adapter:Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 210
    iget-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 215
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 216
    const/16 v0, 0x539

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 217
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 218
    .local v0, "iconUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->currentDialog:Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->currentDialog:Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->onIconSelected(Landroid/net/Uri;)V

    goto :goto_0

    .line 219
    .end local v0    # "iconUri":Landroid/net/Uri;
    :cond_0
    const/16 v0, 0x1e61

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 220
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/winlator/cmod/ShortcutsFragment;->handleManualShortcutAddition(Landroid/net/Uri;)V

    goto :goto_1

    .line 219
    :cond_1
    :goto_0
    nop

    .line 222
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 87
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ShortcutsFragment;->setHasOptionsMenu(Z)V

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 117
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 118
    const v0, 0x7f0d000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 119
    const v0, 0x7f090340

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment;->sortItem:Landroid/view/MenuItem;

    .line 120
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment;->sortItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment;->sortItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->sortTypeText:[Ljava/lang/String;

    iget v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->curSortType:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 121
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 94
    const v0, 0x7f0c00b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 95
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const v2, 0x7f0900bb

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    const v2, 0x7f09013d

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->emptyTextView:Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ShortcutsPref"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->prefs:Landroid/content/SharedPreferences;

    .line 99
    iget-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "cur_sort_type"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->curSortType:I

    .line 100
    iget-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "cur_grid_type"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->curGridType:I

    .line 101
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "cur_list_type"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->curListType:I

    .line 103
    invoke-direct {p0}, Lcom/winlator/cmod/ShortcutsFragment;->updateRecyclerLayout()V

    .line 104
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 126
    .local v0, "itemId":I
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 128
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const v2, 0x7f0901b7

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->manager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v2

    .line 130
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/container/Container;>;"
    new-instance v4, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/ShortcutsFragment;)V

    invoke-direct {p0, v2, v4}, Lcom/winlator/cmod/ShortcutsFragment;->showContainerSelectionDialog(Ljava/util/ArrayList;Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;)V

    .line 137
    return v3

    .line 138
    .end local v2    # "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/container/Container;>;"
    :cond_0
    const v2, 0x7f090339

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    iput v4, p0, Lcom/winlator/cmod/ShortcutsFragment;->curSortType:I

    goto :goto_0

    .line 139
    :cond_1
    const v2, 0x7f090338

    if-ne v0, v2, :cond_2

    iput v3, p0, Lcom/winlator/cmod/ShortcutsFragment;->curSortType:I

    goto :goto_0

    .line 140
    :cond_2
    const v2, 0x7f09033c

    const/4 v5, 0x2

    if-ne v0, v2, :cond_3

    iput v5, p0, Lcom/winlator/cmod/ShortcutsFragment;->curSortType:I

    goto :goto_0

    .line 141
    :cond_3
    const v2, 0x7f09033f

    if-ne v0, v2, :cond_4

    const/4 v2, 0x3

    iput v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->curSortType:I

    goto :goto_0

    .line 142
    :cond_4
    const v2, 0x7f09033d

    if-ne v0, v2, :cond_5

    const/4 v2, 0x4

    iput v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->curSortType:I

    goto :goto_0

    .line 143
    :cond_5
    const v2, 0x7f09033e

    if-ne v0, v2, :cond_6

    const/4 v2, 0x5

    iput v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->curSortType:I

    goto :goto_0

    .line 144
    :cond_6
    const v2, 0x7f09025a

    if-ne v0, v2, :cond_7

    iput v3, p0, Lcom/winlator/cmod/ShortcutsFragment;->curGridType:I

    iput v4, p0, Lcom/winlator/cmod/ShortcutsFragment;->curListType:I

    goto :goto_0

    .line 145
    :cond_7
    const v2, 0x7f090259

    if-ne v0, v2, :cond_8

    iput v5, p0, Lcom/winlator/cmod/ShortcutsFragment;->curGridType:I

    iput v4, p0, Lcom/winlator/cmod/ShortcutsFragment;->curListType:I

    goto :goto_0

    .line 146
    :cond_8
    const v2, 0x7f09025c

    if-ne v0, v2, :cond_9

    iput v4, p0, Lcom/winlator/cmod/ShortcutsFragment;->curGridType:I

    iput v3, p0, Lcom/winlator/cmod/ShortcutsFragment;->curListType:I

    goto :goto_0

    .line 147
    :cond_9
    const v2, 0x7f09025b

    if-ne v0, v2, :cond_b

    iput v4, p0, Lcom/winlator/cmod/ShortcutsFragment;->curGridType:I

    iput v5, p0, Lcom/winlator/cmod/ShortcutsFragment;->curListType:I

    .line 153
    :goto_0
    const-string v2, "cur_sort_type"

    iget v4, p0, Lcom/winlator/cmod/ShortcutsFragment;->curSortType:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v2, "cur_grid_type"

    iget v4, p0, Lcom/winlator/cmod/ShortcutsFragment;->curGridType:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v2, "cur_list_type"

    iget v4, p0, Lcom/winlator/cmod/ShortcutsFragment;->curListType:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    iget-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->sortItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment;->sortItem:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/winlator/cmod/ShortcutsFragment;->sortTypeText:[Ljava/lang/String;

    iget v5, p0, Lcom/winlator/cmod/ShortcutsFragment;->curSortType:I

    aget-object v4, v4, v5

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 159
    :cond_a
    invoke-direct {p0}, Lcom/winlator/cmod/ShortcutsFragment;->updateRecyclerLayout()V

    .line 160
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->loadShortcutsList()V

    .line 161
    return v3

    .line 148
    :cond_b
    const v2, 0x7f090318

    if-ne v0, v2, :cond_c

    .line 149
    invoke-direct {p0}, Lcom/winlator/cmod/ShortcutsFragment;->showSearchDialog()V

    .line 150
    return v3

    .line 151
    :cond_c
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 109
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    new-instance v0, Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/container/ContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment;->manager:Lcom/winlator/cmod/container/ContainerManager;

    .line 111
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->loadShortcutsList()V

    .line 112
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f100230

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 113
    return-void
.end method

.method public updateShortcutOnScreen(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 4
    .param p1, "shortLabel"    # Ljava/lang/String;
    .param p2, "longLabel"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "shortcutPath"    # Ljava/lang/String;
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .param p6, "uuid"    # Ljava/lang/String;

    .line 447
    invoke-virtual {p0}, Lcom/winlator/cmod/ShortcutsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 449
    .local v0, "sm":Landroid/content/pm/ShortcutManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 450
    .local v2, "info":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 451
    invoke-direct/range {p0 .. p6}, Lcom/winlator/cmod/ShortcutsFragment;->buildScreenShortCut(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    goto :goto_1

    .line 454
    .end local v2    # "info":Landroid/content/pm/ShortcutInfo;
    :cond_0
    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    :cond_1
    :goto_1
    nop

    .line 456
    return-void
.end method
