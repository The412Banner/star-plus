.class public Lcom/winlator/cmod/restore/RestoreActivity;
.super Landroid/app/Activity;
.source "RestoreActivity.java"


# instance fields
.field private preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;


# direct methods
.method public static synthetic $r8$lambda$MSizdf7jpXpXNN8yIoNLv0RVpTw(Lcom/winlator/cmod/restore/RestoreActivity;Ljava/io/File;J)Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/restore/RestoreActivity;->lambda$startRestoreOperation$0(Ljava/io/File;J)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c_AN1MQ5to-rf_62aNQ-moUDh20(Lcom/winlator/cmod/restore/RestoreActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/restore/RestoreActivity;->lambda$startRestoreOperation$1(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mIdbXbN-7DbyEQ6pMY4FIG4kVZQ(Lcom/winlator/cmod/restore/RestoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/restore/RestoreActivity;->lambda$onRestoreSuccess$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$wgJaIz2IjxA2nyBF_LnBKt1WwBM(Lcom/winlator/cmod/restore/RestoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/restore/RestoreActivity;->lambda$onRestoreFailed$3()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isCriticalSymbolicLink(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 73
    invoke-static {p1}, Lcom/winlator/cmod/core/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-static {p1}, Lcom/winlator/cmod/core/FileUtils;->readSymlink(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "targetPath":Ljava/lang/String;
    const-string v1, "Download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 80
    .end local v0    # "targetPath":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$onRestoreFailed$3()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/winlator/cmod/restore/RestoreActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 100
    const-string v0, "Data restore failed."

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 101
    invoke-virtual {p0}, Lcom/winlator/cmod/restore/RestoreActivity;->finish()V

    .line 102
    return-void
.end method

.method private synthetic lambda$onRestoreSuccess$2()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/winlator/cmod/restore/RestoreActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 87
    const-string v0, "Data restored successfully."

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 88
    invoke-virtual {p0}, Lcom/winlator/cmod/restore/RestoreActivity;->finish()V

    .line 90
    invoke-virtual {p0}, Lcom/winlator/cmod/restore/RestoreActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/winlator/cmod/restore/RestoreActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/restore/RestoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    :cond_0
    return-void
.end method

.method private synthetic lambda$startRestoreOperation$0(Ljava/io/File;J)Ljava/io/File;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "size"    # J

    .line 47
    invoke-direct {p0, p1}, Lcom/winlator/cmod/restore/RestoreActivity;->isCriticalSymbolicLink(Ljava/io/File;)Z

    move-result v0

    const-string v1, "RestoreOp"

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping symbolic link: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extracting file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-object p1
.end method

.method private synthetic lambda$startRestoreOperation$1(Landroid/net/Uri;)V
    .locals 5
    .param p1, "backupUri"    # Landroid/net/Uri;

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/restore/RestoreActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 42
    .local v0, "dataDir":Ljava/io/File;
    invoke-static {p0, p1}, Lcom/winlator/cmod/core/FileUtils;->getFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 44
    .local v1, "backupFile":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 45
    new-instance v2, Lcom/winlator/cmod/restore/RestoreActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/restore/RestoreActivity$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/restore/RestoreActivity;)V

    invoke-static {v1, v0, v2}, Lcom/winlator/cmod/core/TarCompressorUtils;->extractTar(Ljava/io/File;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    move-result v2

    .line 55
    .local v2, "success":Z
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 57
    if-eqz v2, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/winlator/cmod/restore/RestoreActivity;->onRestoreSuccess()V

    .line 62
    .end local v2    # "success":Z
    nop

    .line 68
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v1    # "backupFile":Ljava/io/File;
    goto :goto_0

    .line 60
    .restart local v0    # "dataDir":Ljava/io/File;
    .restart local v1    # "backupFile":Ljava/io/File;
    .restart local v2    # "success":Z
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Extraction failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "backupUri":Landroid/net/Uri;
    throw v3

    .line 63
    .end local v2    # "success":Z
    .restart local p1    # "backupUri":Landroid/net/Uri;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to obtain file from URI"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "backupUri":Landroid/net/Uri;
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v1    # "backupFile":Ljava/io/File;
    .restart local p1    # "backupUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RestoreOp"

    const-string v2, "Restore failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    invoke-direct {p0}, Lcom/winlator/cmod/restore/RestoreActivity;->onRestoreFailed()V

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private onRestoreFailed()V
    .locals 1

    .line 98
    new-instance v0, Lcom/winlator/cmod/restore/RestoreActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/restore/RestoreActivity$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/restore/RestoreActivity;)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/restore/RestoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method private onRestoreSuccess()V
    .locals 1

    .line 85
    new-instance v0, Lcom/winlator/cmod/restore/RestoreActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/restore/RestoreActivity$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/restore/RestoreActivity;)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/restore/RestoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method private startRestoreOperation(Landroid/net/Uri;)V
    .locals 2
    .param p1, "backupUri"    # Landroid/net/Uri;

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/restore/RestoreActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/restore/RestoreActivity$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/restore/RestoreActivity;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/winlator/cmod/restore/RestoreActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    .line 28
    iget-object v0, p0, Lcom/winlator/cmod/restore/RestoreActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    const v1, 0x7f100210

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;->showOnUiThread(I)V

    .line 30
    invoke-virtual {p0}, Lcom/winlator/cmod/restore/RestoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 31
    .local v0, "backupUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0, v0}, Lcom/winlator/cmod/restore/RestoreActivity;->startRestoreOperation(Landroid/net/Uri;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/restore/RestoreActivity;->finish()V

    .line 36
    :goto_0
    return-void
.end method
