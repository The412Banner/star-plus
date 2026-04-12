.class public Lcom/winlator/cmod/xenvironment/ImageFs;
.super Ljava/lang/Object;
.source "ImageFs.java"


# static fields
.field public static final CACHE_PATH:Ljava/lang/String; = "/home/xuser/.cache"

.field public static final CONFIG_PATH:Ljava/lang/String; = "/home/xuser/.config"

.field public static final HOME_PATH:Ljava/lang/String; = "/home/xuser"

.field public static final USER:Ljava/lang/String; = "xuser"

.field public static final WINEPREFIX:Ljava/lang/String; = "/home/xuser/.wine"


# instance fields
.field public cache_path:Ljava/lang/String;

.field public config_path:Ljava/lang/String;

.field public home_path:Ljava/lang/String;

.field private final rootDir:Ljava/io/File;

.field public winePath:Ljava/lang/String;

.field public wineprefix:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "rootDir"    # Ljava/io/File;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->rootDir:Ljava/io/File;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/opt/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v1}, Lcom/winlator/cmod/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->winePath:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/home/xuser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->home_path:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/home/xuser/.cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->cache_path:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/home/xuser/.config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->config_path:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/home/xuser/.wine"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->wineprefix:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/winlator/cmod/xenvironment/ImageFs;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "imagefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/winlator/cmod/xenvironment/ImageFs;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static find(Ljava/io/File;)Lcom/winlator/cmod/xenvironment/ImageFs;
    .locals 1
    .param p0, "rootDir"    # Ljava/io/File;

    .line 41
    new-instance v0, Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/xenvironment/ImageFs;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public createImgVersionFile(I)V
    .locals 2
    .param p1, "version"    # I

    .line 62
    invoke-virtual {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getConfigDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 63
    invoke-virtual {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getImgVersionFile()Ljava/io/File;

    move-result-object v0

    .line 65
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 66
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public getBinDir()Ljava/io/File;
    .locals 3

    .line 101
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->rootDir:Ljava/io/File;

    const-string v2, "/usr/bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getConfigDir()Ljava/io/File;
    .locals 3

    .line 82
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->rootDir:Ljava/io/File;

    const-string v2, ".winlator"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEtcDir()Ljava/io/File;
    .locals 3

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->rootDir:Ljava/io/File;

    const-string v2, "/usr/etc"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFormattedVersion()Ljava/lang/String;
    .locals 3

    .line 58
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getVersion()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImgVersionFile()Ljava/io/File;
    .locals 3

    .line 86
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getConfigDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".img_version"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInstalledWineDir()Ljava/io/File;
    .locals 3

    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->rootDir:Ljava/io/File;

    const-string v2, "/opt/installed-wine"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLibDir()Ljava/io/File;
    .locals 3

    .line 98
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->rootDir:Ljava/io/File;

    const-string v2, "/usr/lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRootDir()Ljava/io/File;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->rootDir:Ljava/io/File;

    return-object v0
.end method

.method public getShareDir()Ljava/io/File;
    .locals 3

    .line 104
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->rootDir:Ljava/io/File;

    const-string v2, "/usr/share"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTmpDir()Ljava/io/File;
    .locals 3

    .line 94
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->rootDir:Ljava/io/File;

    const-string v2, "/usr/tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVersion()I
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getImgVersionFile()Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "imgVersionFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->readLines(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    return v2
.end method

.method public getWinePath()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->winePath:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->rootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getImgVersionFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setWinePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "winePath"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->winePath:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/ImageFs;->rootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
