.class public Lcom/winlator/cmod/SavesFragment;
.super Landroidx/fragment/app/Fragment;
.source "SavesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/SavesFragment$SavesAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_IMPORT_ARCHIVE:I = 0x3e9


# instance fields
.field private containerManager:Lcom/winlator/cmod/container/ContainerManager;

.field private emptyTextView:Landroid/widget/TextView;

.field private isDarkMode:Z

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private saveManager:Lcom/winlator/cmod/saves/SaveManager;

.field private savesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/winlator/cmod/saves/Save;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6h_4z5f0hnWYjiboztEGvjLY6tE(Lcom/winlator/cmod/SavesFragment;Ljava/lang/String;Lcom/winlator/cmod/core/PreloaderDialog;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/container/Container;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/winlator/cmod/SavesFragment;->lambda$importSave$3(Ljava/lang/String;Lcom/winlator/cmod/core/PreloaderDialog;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/container/Container;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JpvbrGPba563jrftU0iux9Lc9ys(Lcom/winlator/cmod/SavesFragment;Landroid/widget/Spinner;Lcom/winlator/cmod/saves/Save;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/SavesFragment;->lambda$showTransferDialog$7(Landroid/widget/Spinner;Lcom/winlator/cmod/saves/Save;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$M08i0zhRSBh0HZalB8jcWdmJsMM(Lcom/winlator/cmod/SavesFragment;Ljava/lang/String;Lcom/winlator/cmod/core/PreloaderDialog;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/winlator/cmod/SavesFragment;->lambda$importSave$5(Ljava/lang/String;Lcom/winlator/cmod/core/PreloaderDialog;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pjvwzekx5ND-9tXCXgNpnsMLZ5o(Lcom/winlator/cmod/SavesFragment;Lcom/winlator/cmod/core/PreloaderDialog;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SavesFragment;->lambda$importSave$6(Lcom/winlator/cmod/core/PreloaderDialog;Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontainerManager(Lcom/winlator/cmod/SavesFragment;)Lcom/winlator/cmod/container/ContainerManager;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/SavesFragment;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsaveManager(Lcom/winlator/cmod/SavesFragment;)Lcom/winlator/cmod/saves/SaveManager;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/SavesFragment;->saveManager:Lcom/winlator/cmod/saves/SaveManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadSavesList(Lcom/winlator/cmod/SavesFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/SavesFragment;->loadSavesList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/SavesFragment;->savesList:Ljava/util/List;

    return-void
.end method

.method private importSave(Landroid/net/Uri;)V
    .locals 3
    .param p1, "archiveUri"    # Landroid/net/Uri;

    .line 183
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    .line 184
    .local v0, "preloaderDialog":Lcom/winlator/cmod/core/PreloaderDialog;
    const v1, 0x7f10011d

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;->showOnUiThread(I)V

    .line 186
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1}, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/SavesFragment;Lcom/winlator/cmod/core/PreloaderDialog;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 282
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 283
    return-void
.end method

.method static synthetic lambda$importSave$2(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 217
    const-string v0, ".json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$importSave$3(Ljava/lang/String;Lcom/winlator/cmod/core/PreloaderDialog;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/container/Container;)V
    .locals 7
    .param p1, "savePath"    # Ljava/lang/String;
    .param p2, "preloaderDialog"    # Lcom/winlator/cmod/core/PreloaderDialog;
    .param p3, "extractedDir"    # Ljava/io/File;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "tempDir"    # Ljava/io/File;
    .param p6, "selectedContainer"    # Lcom/winlator/cmod/container/Container;

    .line 234
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p6}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".wine/drive_c"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    .local v0, "destRootDir":Ljava/io/File;
    const-string v1, "drive_c"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 239
    .local v1, "driveCIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 240
    const-string v2, "drive_c/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "relativeSavePath":Ljava/lang/String;
    goto :goto_0

    .line 242
    .end local v2    # "relativeSavePath":Ljava/lang/String;
    :cond_0
    move-object v2, p1

    .line 245
    .restart local v2    # "relativeSavePath":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    .local v3, "destSaveDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Failed to create directories for save path."

    invoke-static {v4, v5}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 250
    invoke-virtual {p2}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-static {p5}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 271
    invoke-virtual {p2}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 251
    return-void

    .line 255
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v4, "saveDirectoryToCopy":Ljava/io/File;
    invoke-static {v4, v3}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Failed to copy save files."

    invoke-static {v5, v6}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 258
    invoke-virtual {p2}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    invoke-static {p5}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 271
    invoke-virtual {p2}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 259
    return-void

    .line 263
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/winlator/cmod/SavesFragment;->saveManager:Lcom/winlator/cmod/saves/SaveManager;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p4, v6, p6}, Lcom/winlator/cmod/saves/SaveManager;->addSave(Ljava/lang/String;Ljava/lang/String;Lcom/winlator/cmod/container/Container;)V

    .line 265
    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Save imported successfully."

    invoke-static {v5, v6}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 266
    invoke-direct {p0}, Lcom/winlator/cmod/SavesFragment;->loadSavesList()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    .end local v0    # "destRootDir":Ljava/io/File;
    .end local v1    # "driveCIndex":I
    .end local v2    # "relativeSavePath":Ljava/lang/String;
    .end local v3    # "destSaveDir":Ljava/io/File;
    .end local v4    # "saveDirectoryToCopy":Ljava/io/File;
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to import save: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {p5}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 271
    invoke-virtual {p2}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 272
    nop

    .line 273
    return-void

    .line 270
    :goto_2
    invoke-static {p5}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 271
    invoke-virtual {p2}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 272
    throw v0
.end method

.method static synthetic lambda$importSave$4(Lcom/winlator/cmod/core/PreloaderDialog;)V
    .locals 0
    .param p0, "preloaderDialog"    # Lcom/winlator/cmod/core/PreloaderDialog;

    .line 275
    invoke-virtual {p0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 276
    return-void
.end method

.method private synthetic lambda$importSave$5(Ljava/lang/String;Lcom/winlator/cmod/core/PreloaderDialog;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "savePath"    # Ljava/lang/String;
    .param p2, "preloaderDialog"    # Lcom/winlator/cmod/core/PreloaderDialog;
    .param p3, "extractedDir"    # Ljava/io/File;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "tempDir"    # Ljava/io/File;

    .line 231
    new-instance v7, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/SavesFragment;Ljava/lang/String;Lcom/winlator/cmod/core/PreloaderDialog;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    new-instance v0, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2}, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/cmod/core/PreloaderDialog;)V

    invoke-direct {p0, v7, v0}, Lcom/winlator/cmod/SavesFragment;->showContainerSelectionDialog(Lcom/winlator/cmod/core/Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$importSave$6(Lcom/winlator/cmod/core/PreloaderDialog;Landroid/net/Uri;)V
    .locals 18
    .param p1, "preloaderDialog"    # Lcom/winlator/cmod/core/PreloaderDialog;
    .param p2, "archiveUri"    # Landroid/net/Uri;

    .line 188
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "import_temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    .local v0, "tempDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 192
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Failed to create temporary directory."

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 195
    return-void

    .line 199
    :cond_1
    sget-object v1, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->XZ:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p2

    :try_start_1
    invoke-static {v1, v2, v10, v0}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Z

    move-result v1

    .line 200
    .local v1, "success":Z
    if-nez v1, :cond_2

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Failed to decompress archive."

    invoke-static {v2, v3}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 203
    return-void

    .line 207
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 208
    .local v2, "extractedFiles":[Ljava/io/File;
    if-eqz v2, :cond_6

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/4 v3, 0x0

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3

    move/from16 v16, v1

    move-object/from16 v17, v2

    goto/16 :goto_1

    .line 214
    :cond_3
    aget-object v5, v2, v3

    move-object v11, v5

    .line 217
    .local v11, "extractedDir":Ljava/io/File;
    new-instance v5, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v11, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    move-object v12, v5

    .line 218
    .local v12, "jsonFiles":[Ljava/io/File;
    if-eqz v12, :cond_5

    array-length v5, v12

    if-eq v5, v4, :cond_4

    move/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_0

    .line 224
    :cond_4
    aget-object v3, v12, v3

    move-object v13, v3

    .line 226
    .local v13, "jsonFile":Ljava/io/File;
    invoke-static {v13}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    .line 227
    .local v14, "jsonString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v15, v3

    .line 228
    .local v15, "saveData":Lorg/json/JSONObject;
    const-string v3, "Title"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, "title":Ljava/lang/String;
    const-string v3, "Path"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "savePath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SavesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    new-instance v7, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda1;

    move-object v3, v7

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v16, v1

    move-object v1, v7

    .end local v1    # "success":Z
    .local v16, "success":Z
    move-object v7, v11

    move-object/from16 v17, v2

    move-object v2, v9

    .end local v2    # "extractedFiles":[Ljava/io/File;
    .local v17, "extractedFiles":[Ljava/io/File;
    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/SavesFragment;Ljava/lang/String;Lcom/winlator/cmod/core/PreloaderDialog;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 281
    .end local v0    # "tempDir":Ljava/io/File;
    .end local v5    # "savePath":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v11    # "extractedDir":Ljava/io/File;
    .end local v12    # "jsonFiles":[Ljava/io/File;
    .end local v13    # "jsonFile":Ljava/io/File;
    .end local v14    # "jsonString":Ljava/lang/String;
    .end local v15    # "saveData":Lorg/json/JSONObject;
    .end local v16    # "success":Z
    .end local v17    # "extractedFiles":[Ljava/io/File;
    goto :goto_3

    .line 218
    .restart local v0    # "tempDir":Ljava/io/File;
    .restart local v1    # "success":Z
    .restart local v2    # "extractedFiles":[Ljava/io/File;
    .restart local v11    # "extractedDir":Ljava/io/File;
    .restart local v12    # "jsonFiles":[Ljava/io/File;
    :cond_5
    move/from16 v16, v1

    move-object/from16 v17, v2

    .line 219
    .end local v1    # "success":Z
    .end local v2    # "extractedFiles":[Ljava/io/File;
    .restart local v16    # "success":Z
    .restart local v17    # "extractedFiles":[Ljava/io/File;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "JSON file not found in the archive."

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 221
    return-void

    .line 208
    .end local v11    # "extractedDir":Ljava/io/File;
    .end local v12    # "jsonFiles":[Ljava/io/File;
    .end local v16    # "success":Z
    .end local v17    # "extractedFiles":[Ljava/io/File;
    .restart local v1    # "success":Z
    .restart local v2    # "extractedFiles":[Ljava/io/File;
    :cond_6
    move/from16 v16, v1

    move-object/from16 v17, v2

    .line 209
    .end local v1    # "success":Z
    .end local v2    # "extractedFiles":[Ljava/io/File;
    .restart local v16    # "success":Z
    .restart local v17    # "extractedFiles":[Ljava/io/File;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Unexpected archive structure."

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    return-void

    .line 277
    .end local v0    # "tempDir":Ljava/io/File;
    .end local v16    # "success":Z
    .end local v17    # "extractedFiles":[Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v10, p2

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Import failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method static synthetic lambda$showContainerSelectionDialog$0(Landroid/widget/Spinner;Ljava/util/List;Lcom/winlator/cmod/core/Callback;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "containers"    # Ljava/util/List;
    .param p2, "onContainerSelected"    # Lcom/winlator/cmod/core/Callback;
    .param p3, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 163
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 164
    .local v0, "selectedPosition":I
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/container/Container;

    .line 165
    .local v1, "selectedContainer":Lcom/winlator/cmod/container/Container;
    invoke-interface {p2, v1}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method static synthetic lambda$showContainerSelectionDialog$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "onCancel"    # Ljava/lang/Runnable;
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 168
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 169
    return-void
.end method

.method private synthetic lambda$showTransferDialog$7(Landroid/widget/Spinner;Lcom/winlator/cmod/saves/Save;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "save"    # Lcom/winlator/cmod/saves/Save;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 520
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/container/Container;

    .line 521
    .local v0, "selectedContainer":Lcom/winlator/cmod/container/Container;
    invoke-direct {p0, p2, v0}, Lcom/winlator/cmod/SavesFragment;->transferSaveFiles(Lcom/winlator/cmod/saves/Save;Lcom/winlator/cmod/container/Container;)V

    .line 522
    return-void
.end method

.method private loadSavesList()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment;->saveManager:Lcom/winlator/cmod/saves/SaveManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/saves/SaveManager;->getSaves()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/SavesFragment;->savesList:Ljava/util/List;

    .line 99
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/winlator/cmod/SavesFragment$SavesAdapter;

    iget-object v2, p0, Lcom/winlator/cmod/SavesFragment;->savesList:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;-><init>(Lcom/winlator/cmod/SavesFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment;->savesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment;->emptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment;->emptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :goto_0
    return-void
.end method

.method private selectArchiveForImport()V
    .locals 2

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/SavesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    return-void
.end method

.method private showContainerSelectionDialog(Lcom/winlator/cmod/core/Callback;Ljava/lang/Runnable;)V
    .locals 7
    .param p2, "onCancel"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/winlator/cmod/core/Callback<",
            "Lcom/winlator/cmod/container/Container;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 147
    .local p1, "onContainerSelected":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Lcom/winlator/cmod/container/Container;>;"
    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "dialogView":Landroid/view/View;
    const v1, 0x7f090344

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 150
    .local v1, "spinner":Landroid/widget/Spinner;
    iget-object v2, p0, Lcom/winlator/cmod/SavesFragment;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v2

    .line 151
    .local v2, "containers":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/container/Container;>;"
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090008

    invoke-direct {v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 152
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/cmod/container/Container;

    .line 155
    .local v5, "container":Lcom/winlator/cmod/container/Container;
    invoke-virtual {v5}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 156
    .end local v5    # "container":Lcom/winlator/cmod/container/Container;
    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 159
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    const v5, 0x7f10011b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 161
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, v2, p1}, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Spinner;Ljava/util/List;Lcom/winlator/cmod/core/Callback;)V

    .line 162
    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v5, p2}, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    .line 167
    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 170
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 173
    .local v4, "dialog":Landroid/app/AlertDialog;
    iget-boolean v5, p0, Lcom/winlator/cmod/SavesFragment;->isDarkMode:Z

    if-eqz v5, :cond_1

    .line 174
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f0800f3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f0800f2

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 179
    :goto_1
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 180
    return-void
.end method

.method private showTransferDialog(Lcom/winlator/cmod/saves/Save;)V
    .locals 8
    .param p1, "save"    # Lcom/winlator/cmod/saves/Save;

    .line 508
    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 509
    .local v0, "dialogView":Landroid/view/View;
    const v1, 0x7f090344

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 511
    .local v1, "spinner":Landroid/widget/Spinner;
    iget-object v3, p0, Lcom/winlator/cmod/SavesFragment;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v3

    .line 512
    .local v3, "containers":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/container/Container;>;"
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1090008

    invoke-direct {v4, v5, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 513
    .local v4, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/winlator/cmod/container/Container;>;"
    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 514
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 516
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    const v6, 0x7f100221

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    .line 518
    invoke-virtual {v5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v1, p1}, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/SavesFragment;Landroid/widget/Spinner;Lcom/winlator/cmod/saves/Save;)V

    .line 519
    const v7, 0x7f10025d

    invoke-virtual {v5, v7, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    .line 523
    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 524
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 525
    return-void
.end method

.method private transferSaveFiles(Lcom/winlator/cmod/saves/Save;Lcom/winlator/cmod/container/Container;)V
    .locals 5
    .param p1, "save"    # Lcom/winlator/cmod/saves/Save;
    .param p2, "container"    # Lcom/winlator/cmod/container/Container;

    .line 529
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .local v0, "sourceDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xuser-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 532
    .local v1, "targetDir":Ljava/io/File;
    invoke-static {v0, v1}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 533
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10025e

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10025f

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 539
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 136
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 139
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 140
    .local v0, "archiveUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, v0}, Lcom/winlator/cmod/SavesFragment;->importSave(Landroid/net/Uri;)V

    .line 144
    .end local v0    # "archiveUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/SavesFragment;->setHasOptionsMenu(Z)V

    .line 71
    new-instance v0, Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/container/ContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/SavesFragment;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    .line 74
    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    const-string v1, "dark_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/winlator/cmod/SavesFragment;->isDarkMode:Z

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .line 109
    const v0, 0x7f0d0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 89
    const v0, 0x7f0c00a8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 90
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const v1, 0x7f0900bb

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/winlator/cmod/SavesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/winlator/cmod/SavesFragment;->emptyTextView:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/winlator/cmod/SavesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/winlator/cmod/SavesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object v1, p0, Lcom/winlator/cmod/SavesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/DividerItemDecoration;

    iget-object v3, p0, Lcom/winlator/cmod/SavesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 94
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090306

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    return v2

    .line 117
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090307

    if-ne v0, v1, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/winlator/cmod/SavesFragment;->selectArchiveForImport()V

    .line 119
    return v2

    .line 121
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 80
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f100219

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 82
    new-instance v0, Lcom/winlator/cmod/saves/SaveManager;

    invoke-virtual {p0}, Lcom/winlator/cmod/SavesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/saves/SaveManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/SavesFragment;->saveManager:Lcom/winlator/cmod/saves/SaveManager;

    .line 83
    invoke-direct {p0}, Lcom/winlator/cmod/SavesFragment;->loadSavesList()V

    .line 84
    return-void
.end method

.method public refreshSavesList()V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/winlator/cmod/SavesFragment;->loadSavesList()V

    .line 290
    return-void
.end method
