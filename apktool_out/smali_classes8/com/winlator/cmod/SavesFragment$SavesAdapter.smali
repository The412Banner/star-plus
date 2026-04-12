.class Lcom/winlator/cmod/SavesFragment$SavesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SavesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/SavesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/winlator/cmod/saves/Save;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/winlator/cmod/SavesFragment;


# direct methods
.method public static synthetic $r8$lambda$7N2lth0Har6Gbzggm1fLoB5AvMw(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Lcom/winlator/cmod/saves/Save;ZLcom/winlator/cmod/core/PreloaderDialog;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->lambda$exportSave$2(Lcom/winlator/cmod/saves/Save;ZLcom/winlator/cmod/core/PreloaderDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NQJ0AWs18K3ZiwDXsdK7vMrx6z0(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Lcom/winlator/cmod/saves/Save;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->lambda$onBindViewHolder$0(Lcom/winlator/cmod/saves/Save;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gjobiQAKMEdjf8kdIEZp_eMa5XA(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Lcom/winlator/cmod/saves/Save;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->lambda$showListItemMenu$1(Lcom/winlator/cmod/saves/Save;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$i9iwALCifWWYfNpS8ncpYsp5ez0(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Landroid/widget/Spinner;Ljava/util/List;Lcom/winlator/cmod/saves/Save;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->lambda$showContainerSelectionDialog$4(Landroid/widget/Spinner;Ljava/util/List;Lcom/winlator/cmod/saves/Save;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/SavesFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/winlator/cmod/saves/Save;",
            ">;)V"
        }
    .end annotation

    .line 310
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/saves/Save;>;"
    iput-object p1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 311
    iput-object p2, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->data:Ljava/util/List;

    .line 312
    return-void
.end method

.method private exportSave(Lcom/winlator/cmod/saves/Save;Z)V
    .locals 3
    .param p1, "save"    # Lcom/winlator/cmod/saves/Save;
    .param p2, "shareAfterExport"    # Z

    .line 375
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    iget-object v1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/SavesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    .line 376
    .local v0, "preloaderDialog":Lcom/winlator/cmod/core/PreloaderDialog;
    const v1, 0x7f1000d8

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;->showOnUiThread(I)V

    .line 378
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Lcom/winlator/cmod/saves/Save;ZLcom/winlator/cmod/core/PreloaderDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 440
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 441
    return-void
.end method

.method private getExportDirectory()Ljava/io/File;
    .locals 3

    .line 364
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 365
    .local v0, "downloadsDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "Winlator/Saves"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    .local v1, "winlatorSavesDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 371
    :cond_0
    return-object v1
.end method

.method private synthetic lambda$exportSave$2(Lcom/winlator/cmod/saves/Save;ZLcom/winlator/cmod/core/PreloaderDialog;)V
    .locals 12
    .param p1, "save"    # Lcom/winlator/cmod/saves/Save;
    .param p2, "shareAfterExport"    # Z
    .param p3, "preloaderDialog"    # Lcom/winlator/cmod/core/PreloaderDialog;

    .line 380
    const-string v0, "_"

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v1, "saveDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-static {v2}, Lcom/winlator/cmod/SavesFragment;->-$$Nest$fgetsaveManager(Lcom/winlator/cmod/SavesFragment;)Lcom/winlator/cmod/saves/SaveManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/winlator/cmod/saves/SaveManager;->getSaveJsonFile(Lcom/winlator/cmod/saves/Save;)Ljava/io/File;

    move-result-object v2

    .line 387
    .local v2, "saveJsonFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 388
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "Save .json file is missing."

    invoke-static {v0, v3}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-virtual {p3}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 389
    return-void

    .line 392
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "Winlator/Saves"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    .local v3, "exportDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 394
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "Failed to create export directory."

    invoke-static {v0, v4}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    invoke-virtual {p3}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 395
    return-void

    .line 398
    :cond_2
    :try_start_2
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "timestamp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/winlator/cmod/saves/Save;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tar.xz"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, "archiveName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    .local v6, "exportFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "temp_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/winlator/cmod/saves/Save;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v7

    .line 403
    .local v0, "tempExportDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_3

    .line 404
    iget-object v7, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v7}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Failed to create temporary directory."

    invoke-static {v7, v8}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    invoke-virtual {p3}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 405
    return-void

    .line 409
    :cond_3
    :try_start_3
    new-instance v7, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 410
    .local v7, "copiedJsonFile":Ljava/io/File;
    invoke-static {v2, v7}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 411
    iget-object v8, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v8}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Failed to copy .json file."

    invoke-static {v8, v9}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 438
    invoke-virtual {p3}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 412
    return-void

    .line 415
    :cond_4
    :try_start_4
    new-instance v8, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 416
    .local v8, "copiedSaveDirectory":Ljava/io/File;
    invoke-static {v1, v8}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 417
    iget-object v9, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v9}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Failed to copy save directory."

    invoke-static {v9, v10}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 438
    invoke-virtual {p3}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 418
    return-void

    .line 422
    :cond_5
    :try_start_5
    sget-object v9, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->XZ:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static {v9, v0, v6, v10, v11}, Lcom/winlator/cmod/core/TarCompressorUtils;->compress(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;ILcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;)V

    .line 426
    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 428
    iget-object v9, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v9}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Save exported to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 430
    invoke-direct {p0, v6}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->makeFileVisible(Ljava/io/File;)V

    .line 432
    if-eqz p2, :cond_6

    .line 433
    invoke-direct {p0, v6}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->shareExportedFile(Ljava/io/File;)V

    .line 438
    .end local v0    # "tempExportDir":Ljava/io/File;
    .end local v1    # "saveDirectory":Ljava/io/File;
    .end local v2    # "saveJsonFile":Ljava/io/File;
    .end local v3    # "exportDirectory":Ljava/io/File;
    .end local v4    # "timestamp":Ljava/lang/String;
    .end local v5    # "archiveName":Ljava/lang/String;
    .end local v6    # "exportFile":Ljava/io/File;
    .end local v7    # "copiedJsonFile":Ljava/io/File;
    .end local v8    # "copiedSaveDirectory":Ljava/io/File;
    :cond_6
    goto :goto_1

    .line 382
    .restart local v1    # "saveDirectory":Ljava/io/File;
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Save directory is invalid."

    invoke-static {v0, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 438
    invoke-virtual {p3}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 383
    return-void

    .line 438
    .end local v1    # "saveDirectory":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Failed to export save."

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 438
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p3}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 439
    nop

    .line 440
    return-void

    .line 438
    :goto_2
    invoke-virtual {p3}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 439
    throw v0
.end method

.method static synthetic lambda$makeFileVisible$3(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 452
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/winlator/cmod/saves/Save;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/winlator/cmod/saves/Save;
    .param p2, "view"    # Landroid/view/View;

    .line 325
    invoke-direct {p0, p2, p1}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->showListItemMenu(Landroid/view/View;Lcom/winlator/cmod/saves/Save;)V

    return-void
.end method

.method private synthetic lambda$showContainerSelectionDialog$4(Landroid/widget/Spinner;Ljava/util/List;Lcom/winlator/cmod/saves/Save;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "containers"    # Ljava/util/List;
    .param p3, "save"    # Lcom/winlator/cmod/saves/Save;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 487
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 488
    .local v0, "selectedPosition":I
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/container/Container;

    .line 491
    .local v1, "selectedContainer":Lcom/winlator/cmod/container/Container;
    :try_start_0
    iget-object v2, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-static {v2}, Lcom/winlator/cmod/SavesFragment;->-$$Nest$fgetsaveManager(Lcom/winlator/cmod/SavesFragment;)Lcom/winlator/cmod/saves/SaveManager;

    move-result-object v2

    invoke-virtual {v2, p3, v1}, Lcom/winlator/cmod/saves/SaveManager;->transferSave(Lcom/winlator/cmod/saves/Save;Lcom/winlator/cmod/container/Container;)V

    .line 492
    iget-object v2, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-static {v2}, Lcom/winlator/cmod/SavesFragment;->-$$Nest$mloadSavesList(Lcom/winlator/cmod/SavesFragment;)V

    .line 493
    iget-object v2, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v2}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Transfer complete"

    invoke-static {v2, v3}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    goto :goto_0

    .line 494
    :catch_0
    move-exception v2

    .line 495
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v3}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transfer failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 497
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private synthetic lambda$showListItemMenu$1(Lcom/winlator/cmod/saves/Save;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "save"    # Lcom/winlator/cmod/saves/Save;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 339
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 358
    :pswitch_0
    return v1

    .line 354
    :pswitch_1
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-static {v0}, Lcom/winlator/cmod/SavesFragment;->-$$Nest$fgetsaveManager(Lcom/winlator/cmod/SavesFragment;)Lcom/winlator/cmod/saves/SaveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/saves/SaveManager;->removeSave(Lcom/winlator/cmod/saves/Save;)V

    .line 355
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-static {v0}, Lcom/winlator/cmod/SavesFragment;->-$$Nest$mloadSavesList(Lcom/winlator/cmod/SavesFragment;)V

    .line 356
    return v2

    .line 345
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->showContainerSelectionDialog(Lcom/winlator/cmod/saves/Save;)V

    .line 346
    return v2

    .line 351
    :pswitch_3
    invoke-direct {p0, p1, v2}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->exportSave(Lcom/winlator/cmod/saves/Save;Z)V

    .line 352
    return v2

    .line 348
    :pswitch_4
    invoke-direct {p0, p1, v1}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->exportSave(Lcom/winlator/cmod/saves/Save;Z)V

    .line 349
    return v2

    .line 342
    :pswitch_5
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/SavesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/MainActivity;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/MainActivity;->showSaveEditDialog(Lcom/winlator/cmod/saves/Save;)V

    .line 343
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0902ff
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private makeFileVisible(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .line 447
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 448
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda3;-><init>()V

    .line 447
    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 455
    invoke-virtual {p1, v1, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 456
    invoke-virtual {p1, v1, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 457
    return-void
.end method

.method private shareExportedFile(Ljava/io/File;)V
    .locals 4
    .param p1, "exportFile"    # Ljava/io/File;

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "shareIntent":Landroid/content/Intent;
    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    iget-object v1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.winlator.fileprovider"

    invoke-static {v1, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 463
    .local v1, "fileUri":Landroid/net/Uri;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 464
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 466
    iget-object v2, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    const-string v3, "Share Save Archive"

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/SavesFragment;->startActivity(Landroid/content/Intent;)V

    .line 467
    return-void
.end method

.method private showContainerSelectionDialog(Lcom/winlator/cmod/saves/Save;)V
    .locals 8
    .param p1, "save"    # Lcom/winlator/cmod/saves/Save;

    .line 471
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, "dialogView":Landroid/view/View;
    const v1, 0x7f090344

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 474
    .local v1, "spinner":Landroid/widget/Spinner;
    iget-object v3, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-static {v3}, Lcom/winlator/cmod/SavesFragment;->-$$Nest$fgetcontainerManager(Lcom/winlator/cmod/SavesFragment;)Lcom/winlator/cmod/container/ContainerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/winlator/cmod/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v3

    .line 475
    .local v3, "containers":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/container/Container;>;"
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v5}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1090008

    invoke-direct {v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 476
    .local v4, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 478
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/winlator/cmod/container/Container;

    .line 479
    .local v6, "container":Lcom/winlator/cmod/container/Container;
    invoke-virtual {v6}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 480
    .end local v6    # "container":Lcom/winlator/cmod/container/Container;
    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 483
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v6}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 484
    const v6, 0x7f100218

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 485
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v1, v3, p1}, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Landroid/widget/Spinner;Ljava/util/List;Lcom/winlator/cmod/saves/Save;)V

    .line 486
    const v7, 0x104000a

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 498
    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 499
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 500
    return-void
.end method

.method private showListItemMenu(Landroid/view/View;Lcom/winlator/cmod/saves/Save;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "save"    # Lcom/winlator/cmod/saves/Save;

    .line 334
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->this$0:Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 335
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 336
    .local v1, "listItemMenu":Landroid/widget/PopupMenu;
    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 338
    new-instance v2, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Lcom/winlator/cmod/saves/Save;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 360
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 361
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 292
    check-cast p1, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->onBindViewHolder(Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 321
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/saves/Save;

    .line 322
    .local v0, "item":Lcom/winlator/cmod/saves/Save;
    invoke-static {p1}, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->-$$Nest$fgetimageView(Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080149

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    invoke-static {p1}, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->-$$Nest$fgettitle(Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/winlator/cmod/saves/Save;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    invoke-static {p1}, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->-$$Nest$fgetcontainerName(Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-static {p1}, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->-$$Nest$fgetmenuButton(Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Lcom/winlator/cmod/saves/Save;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 316
    new-instance v0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00a9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;-><init>(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Landroid/view/View;Lcom/winlator/cmod/SavesFragment-IA;)V

    return-object v0
.end method
