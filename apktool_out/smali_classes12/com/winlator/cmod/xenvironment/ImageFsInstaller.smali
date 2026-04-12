.class public abstract Lcom/winlator/cmod/xenvironment/ImageFsInstaller;
.super Ljava/lang/Object;
.source "ImageFsInstaller.java"


# static fields
.field public static final LATEST_VERSION:B = 0x15t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearOptDir(Ljava/io/File;)V
    .locals 6
    .param p0, "optDir"    # Ljava/io/File;

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 108
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 109
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 110
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "installed-wine"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-static {v3}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 109
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method private static clearRootDir(Ljava/io/File;)V
    .locals 6
    .param p0, "rootDir"    # Ljava/io/File;

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 119
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 120
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 121
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "name":Ljava/lang/String;
    const-string v5, "home"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    goto :goto_1

    .line 127
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 120
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "files":[Ljava/io/File;
    :cond_1
    goto :goto_2

    .line 131
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 132
    :goto_2
    return-void
.end method

.method public static installDriversFromAssets(Lcom/winlator/cmod/MainActivity;)V
    .locals 5
    .param p0, "activity"    # Lcom/winlator/cmod/MainActivity;

    .line 57
    new-instance v0, Lcom/winlator/cmod/contents/AdrenotoolsManager;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/contents/AdrenotoolsManager;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "adrenotoolsManager":Lcom/winlator/cmod/contents/AdrenotoolsManager;
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "adrenotoolsAssetDrivers":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 61
    .local v4, "driver":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->extractDriverFromResources(Ljava/lang/String;)Z

    .line 60
    .end local v4    # "driver":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public static installFromAssets(Lcom/winlator/cmod/MainActivity;)V
    .locals 5
    .param p0, "activity"    # Lcom/winlator/cmod/MainActivity;

    .line 65
    invoke-static {p0}, Lcom/winlator/cmod/core/AppUtils;->keepScreenOn(Landroid/app/Activity;)V

    .line 66
    invoke-static {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v0

    .line 67
    .local v0, "imageFs":Lcom/winlator/cmod/xenvironment/ImageFs;
    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v1

    .line 69
    .local v1, "rootDir":Ljava/io/File;
    invoke-static {p0}, Lcom/winlator/cmod/SettingsFragment;->resetEmulatorsVersion(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 71
    new-instance v2, Lcom/winlator/cmod/core/DownloadProgressDialog;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/core/DownloadProgressDialog;-><init>(Landroid/app/Activity;)V

    .line 72
    .local v2, "dialog":Lcom/winlator/cmod/core/DownloadProgressDialog;
    const v3, 0x7f100129

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/core/DownloadProgressDialog;->show(I)V

    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, p0, v2, v0}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Lcom/winlator/cmod/MainActivity;Lcom/winlator/cmod/core/DownloadProgressDialog;Lcom/winlator/cmod/xenvironment/ImageFs;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public static installIfNeeded(Lcom/winlator/cmod/MainActivity;)V
    .locals 3
    .param p0, "activity"    # Lcom/winlator/cmod/MainActivity;

    .line 102
    invoke-static {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v0

    .line 103
    .local v0, "imageFs":Lcom/winlator/cmod/xenvironment/ImageFs;
    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getVersion()I

    move-result v1

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller;->installFromAssets(Lcom/winlator/cmod/MainActivity;)V

    .line 104
    :cond_1
    return-void
.end method

.method public static installWineFromAssets(Lcom/winlator/cmod/MainActivity;)V
    .locals 9
    .param p0, "activity"    # Lcom/winlator/cmod/MainActivity;

    .line 47
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "versions":[Ljava/lang/String;
    invoke-static {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v1

    .line 49
    .local v1, "rootDir":Ljava/io/File;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 50
    .local v4, "version":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/opt/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v5, "outFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 52
    sget-object v6, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->XZ:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txz"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p0, v7, v5}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 49
    .end local v4    # "version":Ljava/lang/String;
    .end local v5    # "outFile":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic lambda$installFromAssets$0(Lcom/winlator/cmod/core/DownloadProgressDialog;I)V
    .locals 0
    .param p0, "dialog"    # Lcom/winlator/cmod/core/DownloadProgressDialog;
    .param p1, "progress"    # I

    .line 83
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/core/DownloadProgressDialog;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$installFromAssets$1(Ljava/util/concurrent/atomic/AtomicLong;JLcom/winlator/cmod/MainActivity;Lcom/winlator/cmod/core/DownloadProgressDialog;Ljava/io/File;J)Ljava/io/File;
    .locals 4
    .param p0, "totalSizeRef"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "contentLength"    # J
    .param p3, "activity"    # Lcom/winlator/cmod/MainActivity;
    .param p4, "dialog"    # Lcom/winlator/cmod/core/DownloadProgressDialog;
    .param p5, "file"    # Ljava/io/File;
    .param p6, "size"    # J

    .line 80
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-lez v0, :cond_0

    .line 81
    invoke-virtual {p0, p6, p7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 82
    .local v0, "totalSize":J
    long-to-float v2, v0

    long-to-float v3, p1

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 83
    .local v2, "progress":I
    new-instance v3, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda1;

    invoke-direct {v3, p4, v2}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/core/DownloadProgressDialog;I)V

    invoke-virtual {p3, v3}, Lcom/winlator/cmod/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    .end local v0    # "totalSize":J
    .end local v2    # "progress":I
    :cond_0
    return-object p5
.end method

.method static synthetic lambda$installFromAssets$2(Ljava/io/File;Lcom/winlator/cmod/MainActivity;Lcom/winlator/cmod/core/DownloadProgressDialog;Lcom/winlator/cmod/xenvironment/ImageFs;)V
    .locals 12
    .param p0, "rootDir"    # Ljava/io/File;
    .param p1, "activity"    # Lcom/winlator/cmod/MainActivity;
    .param p2, "dialog"    # Lcom/winlator/cmod/core/DownloadProgressDialog;
    .param p3, "imageFs"    # Lcom/winlator/cmod/xenvironment/ImageFs;

    .line 74
    invoke-static {p0}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller;->clearRootDir(Ljava/io/File;)V

    .line 75
    const/16 v0, 0x16

    .line 76
    .local v0, "compressionRatio":B
    const-string v1, "imagefs.txz"

    invoke-static {p1, v1}, Lcom/winlator/cmod/core/FileUtils;->getSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4091745d

    mul-float/2addr v2, v3

    float-to-long v9, v2

    .line 77
    .local v9, "contentLength":J
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 79
    .local v4, "totalSizeRef":Ljava/util/concurrent/atomic/AtomicLong;
    sget-object v2, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->XZ:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    new-instance v11, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda2;

    move-object v3, v11

    move-wide v5, v9

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicLong;JLcom/winlator/cmod/MainActivity;Lcom/winlator/cmod/core/DownloadProgressDialog;)V

    invoke-static {v2, p1, v1, p0, v11}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    move-result v1

    .line 88
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 89
    invoke-static {p1}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller;->installWineFromAssets(Lcom/winlator/cmod/MainActivity;)V

    .line 90
    invoke-static {p1}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller;->installDriversFromAssets(Lcom/winlator/cmod/MainActivity;)V

    .line 91
    const/16 v2, 0x15

    invoke-virtual {p3, v2}, Lcom/winlator/cmod/xenvironment/ImageFs;->createImgVersionFile(I)V

    .line 92
    new-instance v2, Ljava/io/File;

    invoke-virtual {p3}, Lcom/winlator/cmod/xenvironment/ImageFs;->getLibDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "libSDL2-2.0.so.0"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "libSDL2-2.0.so"

    invoke-static {v3, v2}, Lcom/winlator/cmod/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller;->resetContainerImgVersions(Landroid/content/Context;)V

    goto :goto_0

    .line 95
    :cond_0
    const v2, 0x7f100265

    invoke-static {p1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 97
    :goto_0
    invoke-virtual {p2}, Lcom/winlator/cmod/core/DownloadProgressDialog;->closeOnUiThread()V

    .line 98
    return-void
.end method

.method private static resetContainerImgVersions(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/winlator/cmod/container/ContainerManager;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/container/ContainerManager;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "manager":Lcom/winlator/cmod/container/ContainerManager;
    invoke-virtual {v0}, Lcom/winlator/cmod/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/container/Container;

    .line 35
    .local v2, "container":Lcom/winlator/cmod/container/Container;
    const-string v3, "imgVersion"

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "imgVersion":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getWineVersion()Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "wineVersion":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/winlator/cmod/core/WineInfo;->isMainWineVersion(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    const/4 v7, 0x5

    if-gt v6, v7, :cond_0

    .line 38
    const-string v6, "wineprefixNeedsUpdate"

    const-string v7, "t"

    invoke-virtual {v2, v6, v7}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->saveData()V

    .line 43
    .end local v2    # "container":Lcom/winlator/cmod/container/Container;
    .end local v4    # "imgVersion":Ljava/lang/String;
    .end local v5    # "wineVersion":Ljava/lang/String;
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method
