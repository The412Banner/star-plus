.class public Lcom/winlator/cmod/ContainersFragment;
.super Landroidx/fragment/app/Fragment;
.source "ContainersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_IMPORT_CONTAINER:I = 0x42e


# instance fields
.field private emptyTextView:Landroid/widget/TextView;

.field private manager:Lcom/winlator/cmod/container/ContainerManager;

.field private preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$2n6mvXk2ds9c7Nzl1Ycd2S5UrlI(Lcom/winlator/cmod/ContainersFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/ContainersFragment;->lambda$importContainer$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ham04ZXlUd0ucSbFL9niJ2GwrbU(Lcom/winlator/cmod/ContainersFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ContainersFragment;->lambda$showImportInfoDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$O1EXo3XqtMoFx8UUIhJPaFByAL8(Lcom/winlator/cmod/ContainersFragment;Landroid/net/Uri;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ContainersFragment;->lambda$showImportConfirmationDialog$2(Landroid/net/Uri;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PJnrH-MteQp6vSr53emonco6cek(Lcom/winlator/cmod/ContainersFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/ContainersFragment;->lambda$importContainer$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$S_moHqGkUVknoD6cf7zLOEUjUY0(Lcom/winlator/cmod/ContainersFragment;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContainersFragment;->lambda$importContainer$7(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b8BFMujwcdSSyVRmVW-l5P1BooU(Lcom/winlator/cmod/ContainersFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContainersFragment;->lambda$importContainer$6(Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmanager(Lcom/winlator/cmod/ContainersFragment;)Lcom/winlator/cmod/container/ContainerManager;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContainersFragment;->manager:Lcom/winlator/cmod/container/ContainerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreloaderDialog(Lcom/winlator/cmod/ContainersFragment;)Lcom/winlator/cmod/core/PreloaderDialog;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContainersFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadContainersList(Lcom/winlator/cmod/ContainersFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/ContainersFragment;->loadContainersList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private copyDocumentFileToDirectory(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Z
    .locals 11
    .param p1, "sourceDir"    # Landroidx/documentfile/provider/DocumentFile;
    .param p2, "targetDir"    # Ljava/io/File;

    .line 232
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    .line 235
    .local v4, "file":Landroidx/documentfile/provider/DocumentFile;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .local v5, "targetFile":Ljava/io/File;
    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 237
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    return v1

    .line 238
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/winlator/cmod/ContainersFragment;->copyDocumentFileToDirectory(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_5

    return v1

    .line 240
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .local v6, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 242
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v8, v8, [B

    .line 244
    .local v8, "buffer":[B
    :goto_1
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v10, v9

    .local v10, "len":I
    if-lez v9, :cond_3

    .line 245
    invoke-virtual {v7, v8, v1, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 247
    .end local v8    # "buffer":[B
    .end local v10    # "len":I
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v7    # "out":Ljava/io/OutputStream;
    if-eqz v6, :cond_4

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 249
    .end local v6    # "in":Ljava/io/InputStream;
    :cond_4
    nop

    .line 234
    .end local v4    # "file":Landroidx/documentfile/provider/DocumentFile;
    .end local v5    # "targetFile":Ljava/io/File;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    .restart local v4    # "file":Landroidx/documentfile/provider/DocumentFile;
    .restart local v5    # "targetFile":Ljava/io/File;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "file":Landroidx/documentfile/provider/DocumentFile;
    .end local v5    # "targetFile":Ljava/io/File;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local p1    # "sourceDir":Landroidx/documentfile/provider/DocumentFile;
    .end local p2    # "targetDir":Ljava/io/File;
    :goto_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v4    # "file":Landroidx/documentfile/provider/DocumentFile;
    .restart local v5    # "targetFile":Ljava/io/File;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "sourceDir":Landroidx/documentfile/provider/DocumentFile;
    .restart local p2    # "targetDir":Ljava/io/File;
    :catchall_2
    move-exception v0

    if-eqz v6, :cond_6

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "file":Landroidx/documentfile/provider/DocumentFile;
    .end local v5    # "targetFile":Ljava/io/File;
    .end local p1    # "sourceDir":Landroidx/documentfile/provider/DocumentFile;
    .end local p2    # "targetDir":Ljava/io/File;
    :cond_6
    :goto_3
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 247
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v4    # "file":Landroidx/documentfile/provider/DocumentFile;
    .restart local v5    # "targetFile":Ljava/io/File;
    .restart local p1    # "sourceDir":Landroidx/documentfile/provider/DocumentFile;
    .restart local p2    # "targetDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/IOException;
    return v1

    .line 252
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "file":Landroidx/documentfile/provider/DocumentFile;
    .end local v5    # "targetFile":Ljava/io/File;
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private importContainer(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 197
    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/winlator/cmod/core/FileUtils;->getFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 201
    .local v0, "importDir":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/winlator/cmod/ContainersFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    const v2, 0x7f10011c

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/core/PreloaderDialog;->show(I)V

    .line 209
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/ContainersFragment;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 227
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 228
    return-void

    .line 202
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Invalid container directory."

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 203
    return-void
.end method

.method private synthetic lambda$importContainer$4()V
    .locals 2

    .line 216
    invoke-direct {p0}, Lcom/winlator/cmod/ContainersFragment;->loadContainersList()V

    .line 217
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Container imported successfully."

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 218
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->close()V

    .line 219
    return-void
.end method

.method private synthetic lambda$importContainer$5()V
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/ContainersFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method private synthetic lambda$importContainer$6(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 223
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->close()V

    .line 224
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error importing container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 225
    return-void
.end method

.method private synthetic lambda$importContainer$7(Ljava/io/File;)V
    .locals 3
    .param p1, "importDir"    # Ljava/io/File;

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment;->manager:Lcom/winlator/cmod/container/ContainerManager;

    new-instance v1, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/ContainersFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/winlator/cmod/container/ContainerManager;->importContainer(Ljava/io/File;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/ContainersFragment;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$showImportConfirmationDialog$2(Landroid/net/Uri;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 162
    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContainersFragment;->importContainer(Landroid/net/Uri;)V

    .line 163
    return-void
.end method

.method static synthetic lambda$showImportConfirmationDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 164
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showImportInfoDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 150
    invoke-direct {p0}, Lcom/winlator/cmod/ContainersFragment;->openFilePicker()V

    .line 151
    return-void
.end method

.method static synthetic lambda$showImportInfoDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 152
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private loadContainersList()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/winlator/cmod/ContainersFragment;->manager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    .local v0, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/container/Container;>;"
    iget-object v1, p0, Lcom/winlator/cmod/ContainersFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;-><init>(Lcom/winlator/cmod/ContainersFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/ContainersFragment;->emptyTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :cond_0
    return-void
.end method

.method private openFilePicker()V
    .locals 2

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    const/16 v1, 0x42e

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/ContainersFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    return-void
.end method

.method private showImportConfirmationDialog(Landroid/net/Uri;Ljava/io/File;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "importDir"    # Ljava/io/File;

    .line 158
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Confirm Import"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Proceed to import the container?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 161
    new-instance v1, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/ContainersFragment;Landroid/net/Uri;)V

    const-string v2, "Import"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    new-instance v1, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 166
    return-void
.end method

.method private showImportInfoDialog()V
    .locals 3

    .line 144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Import Container"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 146
    const-string v1, "This option will allow you to restore an exported container. To proceed, click OK and select your \'xuser-\' directory. The container\'s settings will need to be configured after a successful import, but all files and shortcuts should be restored if you are restoring a real container. Beware, the directory you select will be copied into the app\'s storage directory, so be sure you have enough space. You can delete your copy afterward."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 149
    new-instance v1, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/ContainersFragment;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    new-instance v1, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/winlator/cmod/ContainersFragment$$ExternalSyntheticLambda7;-><init>()V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 154
    return-void
.end method

.method private toggleBigPictureMode()V
    .locals 4

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/winlator/cmod/BigPictureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ContainersFragment;->startActivity(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001c

    const v3, 0x7f01001d

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    .line 140
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 170
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 171
    const/16 v0, 0x42e

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 172
    if-eqz p3, :cond_2

    .line 173
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 174
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/winlator/cmod/core/FileUtils;->getFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 177
    .local v1, "importDir":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/ContainersFragment;->showImportConfirmationDialog(Landroid/net/Uri;Ljava/io/File;)V

    goto :goto_1

    .line 178
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Invalid container directory."

    invoke-static {v2, v3}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 179
    return-void

    .line 186
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "importDir":Ljava/io/File;
    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ContainersFragment;->setHasOptionsMenu(Z)V

    .line 68
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/winlator/cmod/ContainersFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .line 99
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 100
    const v0, 0x7f0d0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 101
    const v0, 0x7f0901a9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 102
    .local v0, "bigPictureItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 105
    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    const v0, 0x7f0c002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 83
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const v1, 0x7f0900bb

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/winlator/cmod/ContainersFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/winlator/cmod/ContainersFragment;->emptyTextView:Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/winlator/cmod/ContainersFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/winlator/cmod/ContainersFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object v1, p0, Lcom/winlator/cmod/ContainersFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/DividerItemDecoration;

    iget-object v3, p0, Lcom/winlator/cmod/ContainersFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 87
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 131
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 127
    :sswitch_0
    invoke-direct {p0}, Lcom/winlator/cmod/ContainersFragment;->showImportInfoDialog()V

    .line 128
    return v1

    .line 113
    :sswitch_1
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 115
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 116
    const v3, 0x7f010025

    const v4, 0x7f010026

    const v5, 0x7f010022

    const v6, 0x7f010029

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 117
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/ContainerDetailFragment;

    invoke-direct {v3}, Lcom/winlator/cmod/ContainerDetailFragment;-><init>()V

    .line 118
    const v4, 0x7f090084

    invoke-virtual {v2, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 120
    return v1

    .line 123
    .end local v0    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :sswitch_2
    invoke-direct {p0}, Lcom/winlator/cmod/ContainersFragment;->toggleBigPictureMode()V

    .line 124
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f0901a9 -> :sswitch_2
        0x7f0901f2 -> :sswitch_1
        0x7f0901f3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    new-instance v0, Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/container/ContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/ContainersFragment;->manager:Lcom/winlator/cmod/container/ContainerManager;

    .line 75
    invoke-direct {p0}, Lcom/winlator/cmod/ContainersFragment;->loadContainersList()V

    .line 76
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f10006a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 77
    return-void
.end method
