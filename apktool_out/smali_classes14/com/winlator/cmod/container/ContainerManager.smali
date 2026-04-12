.class public Lcom/winlator/cmod/container/ContainerManager;
.super Ljava/lang/Object;
.source "ContainerManager.java"


# instance fields
.field private final containers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/container/Container;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final homeDir:Ljava/io/File;

.field private isInitialized:Z

.field private maxContainerId:I


# direct methods
.method public static synthetic $r8$lambda$2-27baiql7iqLGsV2OIvI7HaVcs(Lcom/winlator/cmod/container/ContainerManager;Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/container/ContainerManager;->lambda$importContainer$8(Ljava/io/File;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HqbnuLWAETQouk31k5gV8FFc3C0(Lcom/winlator/cmod/container/ContainerManager;Ljava/lang/Runnable;Lcom/winlator/cmod/container/Container;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/container/ContainerManager;->lambda$exportContainer$13(Ljava/lang/Runnable;Lcom/winlator/cmod/container/Container;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dpiuAIGDHcmZ3doXKPpfdzGGBEk(Lcom/winlator/cmod/container/ContainerManager;Lcom/winlator/cmod/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/container/ContainerManager;->lambda$removeContainerAsync$3(Lcom/winlator/cmod/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fA95UxnKcaV09Y-cW-1Le2pNixE(Lcom/winlator/cmod/container/ContainerManager;Lcom/winlator/cmod/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/container/ContainerManager;->lambda$duplicateContainerAsync$2(Lcom/winlator/cmod/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vkGsM06BZgh_Ld1anuFVGzyunYE(Lcom/winlator/cmod/container/ContainerManager;Lorg/json/JSONObject;Lcom/winlator/cmod/contents/ContentsManager;Landroid/os/Handler;Lcom/winlator/cmod/core/Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/container/ContainerManager;->lambda$createContainerAsync$1(Lorg/json/JSONObject;Lcom/winlator/cmod/contents/ContentsManager;Landroid/os/Handler;Lcom/winlator/cmod/core/Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/container/ContainerManager;->containers:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I

    .line 35
    iput-boolean v0, p0, Lcom/winlator/cmod/container/ContainerManager;->isInitialized:Z

    .line 38
    iput-object p1, p0, Lcom/winlator/cmod/container/ContainerManager;->context:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 40
    .local v0, "rootDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "home"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/winlator/cmod/container/ContainerManager;->homeDir:Ljava/io/File;

    .line 41
    invoke-direct {p0}, Lcom/winlator/cmod/container/ContainerManager;->loadContainers()V

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/winlator/cmod/container/ContainerManager;->isInitialized:Z

    .line 43
    return-void
.end method

.method private createContainer(Lorg/json/JSONObject;Lcom/winlator/cmod/contents/ContentsManager;)Lcom/winlator/cmod/container/Container;
    .locals 11
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "contentsManager"    # Lcom/winlator/cmod/contents/ContentsManager;

    .line 122
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I

    add-int/lit8 v1, v1, 0x1

    .line 123
    .local v1, "id":I
    const-string v2, "id"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/winlator/cmod/container/ContainerManager;->homeDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xuser-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .local v2, "containerDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    .line 128
    :cond_0
    new-instance v3, Lcom/winlator/cmod/container/Container;

    invoke-direct {v3, v1, p0}, Lcom/winlator/cmod/container/Container;-><init>(ILcom/winlator/cmod/container/ContainerManager;)V

    .line 129
    .local v3, "container":Lcom/winlator/cmod/container/Container;
    invoke-virtual {v3, v2}, Lcom/winlator/cmod/container/Container;->setRootDir(Ljava/io/File;)V

    .line 130
    invoke-virtual {v3, p1}, Lcom/winlator/cmod/container/Container;->loadData(Lorg/json/JSONObject;)V

    .line 132
    const-string v4, "wineVersion"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/container/Container;->setWineVersion(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getWineVersion()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v3

    move-object v8, p2

    move-object v9, v2

    invoke-virtual/range {v5 .. v10}, Lcom/winlator/cmod/container/ContainerManager;->extractContainerPatternFile(Lcom/winlator/cmod/container/Container;Ljava/lang/String;Lcom/winlator/cmod/contents/ContentsManager;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 135
    invoke-static {v2}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 136
    return-object v0

    .line 146
    :cond_1
    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->saveData()V

    .line 147
    iget v4, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I

    .line 148
    iget-object v4, p0, Lcom/winlator/cmod/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-object v3

    .line 150
    .end local v1    # "id":I
    .end local v2    # "containerDir":Ljava/io/File;
    .end local v3    # "container":Lcom/winlator/cmod/container/Container;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    .end local v1    # "e":Lorg/json/JSONException;
    return-object v0
.end method

.method private duplicateContainer(Lcom/winlator/cmod/container/Container;)V
    .locals 6
    .param p1, "srcContainer"    # Lcom/winlator/cmod/container/Container;

    .line 158
    iget v0, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I

    add-int/lit8 v0, v0, 0x1

    .line 160
    .local v0, "id":I
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/cmod/container/ContainerManager;->homeDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xuser-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v1, "dstDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v2, v1, v3}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/winlator/cmod/core/Callback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    invoke-static {v1}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 166
    return-void

    .line 169
    :cond_1
    new-instance v2, Lcom/winlator/cmod/container/Container;

    invoke-direct {v2, v0, p0}, Lcom/winlator/cmod/container/Container;-><init>(ILcom/winlator/cmod/container/ContainerManager;)V

    .line 170
    .local v2, "dstContainer":Lcom/winlator/cmod/container/Container;
    invoke-virtual {v2, v1}, Lcom/winlator/cmod/container/Container;->setRootDir(Ljava/io/File;)V

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/winlator/cmod/container/ContainerManager;->context:Landroid/content/Context;

    const v5, 0x7f100001

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setName(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setScreenSize(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getEnvVars()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setEnvVars(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getCPUList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setCPUList(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getCPUListWoW64()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setCPUListWoW64(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setGraphicsDriver(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getDXWrapper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setDXWrapper(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getDXWrapperConfig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setDXWrapperConfig(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getAudioDriver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setAudioDriver(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getWinComponents()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setWinComponents(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getDrives()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setDrives(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->isShowFPS()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setShowFPS(Z)V

    .line 183
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getStartupSelection()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setStartupSelection(B)V

    .line 184
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getBox64Preset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setBox64Preset(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getDesktopTheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setDesktopTheme(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getWineVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setWineVersion(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->saveData()V

    .line 189
    iget v3, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I

    .line 190
    iget-object v3, p0, Lcom/winlator/cmod/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method private extractCommonDlls(Lcom/winlator/cmod/core/WineInfo;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)V
    .locals 9
    .param p1, "wineInfo"    # Lcom/winlator/cmod/core/WineInfo;
    .param p2, "srcName"    # Ljava/lang/String;
    .param p3, "dstName"    # Ljava/lang/String;
    .param p4, "containerDir"    # Ljava/io/File;
    .param p5, "onExtractFileListener"    # Lcom/winlator/cmod/core/OnExtractFileListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/winlator/cmod/core/WineInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib/wine/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "srcDir":Ljava/io/File;
    new-instance v1, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 239
    .local v1, "srcfiles":[Ljava/io/File;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 240
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "dllName":Ljava/lang/String;
    const-string v6, "iexplore.exe"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "aarch64-windows"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 242
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/winlator/cmod/core/WineInfo;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/lib/wine/i386-windows/iexplore.exe"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 243
    :cond_0
    const-string v6, "tabtip.exe"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "icu.dll"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 244
    goto :goto_1

    .line 245
    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ".wine/drive_c/windows/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    .local v6, "dstFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 247
    :cond_2
    if-eqz p5, :cond_3

    .line 248
    const-wide/16 v7, 0x0

    invoke-interface {p5, v6, v7, v8}, Lcom/winlator/cmod/core/OnExtractFileListener;->onExtractFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v6

    .line 249
    if-nez v6, :cond_3

    goto :goto_1

    .line 251
    :cond_3
    invoke-static {v4, v6}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 239
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "dllName":Ljava/lang/String;
    .end local v6    # "dstFile":Ljava/io/File;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 253
    :cond_5
    return-void
.end method

.method static synthetic lambda$createContainerAsync$0(Lcom/winlator/cmod/core/Callback;Lcom/winlator/cmod/container/Container;)V
    .locals 0
    .param p0, "callback"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;

    .line 100
    invoke-interface {p0, p1}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createContainerAsync$1(Lorg/json/JSONObject;Lcom/winlator/cmod/contents/ContentsManager;Landroid/os/Handler;Lcom/winlator/cmod/core/Callback;)V
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "contentsManager"    # Lcom/winlator/cmod/contents/ContentsManager;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "callback"    # Lcom/winlator/cmod/core/Callback;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/container/ContainerManager;->createContainer(Lorg/json/JSONObject;Lcom/winlator/cmod/contents/ContentsManager;)Lcom/winlator/cmod/container/Container;

    move-result-object v0

    .line 100
    .local v0, "container":Lcom/winlator/cmod/container/Container;
    new-instance v1, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p4, v0}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/cmod/core/Callback;Lcom/winlator/cmod/container/Container;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method static synthetic lambda$duplicateContainer$4(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 164
    const/16 v0, 0x1f9

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/FileUtils;->chmod(Ljava/io/File;I)V

    return-void
.end method

.method private synthetic lambda$duplicateContainerAsync$2(Lcom/winlator/cmod/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 107
    invoke-direct {p0, p1}, Lcom/winlator/cmod/container/ContainerManager;->duplicateContainer(Lcom/winlator/cmod/container/Container;)V

    .line 108
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method static synthetic lambda$exportContainer$10(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 358
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$exportContainer$11(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 364
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$exportContainer$12(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 368
    const/16 v0, 0x1f9

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/FileUtils;->chmod(Ljava/io/File;I)V

    return-void
.end method

.method private synthetic lambda$exportContainer$13(Ljava/lang/Runnable;Lcom/winlator/cmod/container/Container;)V
    .locals 6
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "container"    # Lcom/winlator/cmod/container/Container;

    .line 345
    const-string v0, "ContainerManager"

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Winlator/Backups/Containers"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    .local v1, "exportDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create export directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v2, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v2}, Lcom/winlator/cmod/container/ContainerManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-direct {p0, p1}, Lcom/winlator/cmod/container/ContainerManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 350
    return-void

    .line 353
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v2

    .line 354
    .local v2, "containerDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    .local v3, "destinationDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Export directory already exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v4, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda12;

    invoke-direct {v4, p1}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v4}, Lcom/winlator/cmod/container/ContainerManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    invoke-direct {p0, p1}, Lcom/winlator/cmod/container/ContainerManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 359
    return-void

    .line 362
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v4, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda13;

    invoke-direct {v4, p1}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v4}, Lcom/winlator/cmod/container/ContainerManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    invoke-direct {p0, p1}, Lcom/winlator/cmod/container/ContainerManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 365
    return-void

    .line 368
    :cond_2
    :try_start_3
    new-instance v4, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/winlator/cmod/core/Callback;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to export some container files to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v3}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 373
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container exported successfully to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    nop

    .end local v1    # "exportDir":Ljava/io/File;
    .end local v2    # "containerDir":Ljava/io/File;
    .end local v3    # "destinationDir":Ljava/io/File;
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to export container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 377
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0, p1}, Lcom/winlator/cmod/container/ContainerManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 378
    nop

    .line 379
    return-void

    .line 377
    :goto_1
    invoke-direct {p0, p1}, Lcom/winlator/cmod/container/ContainerManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 378
    throw v0
.end method

.method static synthetic lambda$exportContainer$9(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 349
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$extractCommonDlls$6(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 237
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$importContainer$7(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 316
    const/16 v0, 0x1f9

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/FileUtils;->chmod(Ljava/io/File;I)V

    return-void
.end method

.method private synthetic lambda$importContainer$8(Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "importDir"    # Ljava/io/File;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 295
    const-string v0, "ContainerManager"

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/container/ContainerManager;->getNextContainerId()I

    move-result v1

    .line 302
    .local v1, "newContainerId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xuser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "newContainerName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/winlator/cmod/container/ContainerManager;->homeDir:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    .local v3, "newContainerDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container directory already exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 310
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 316
    :cond_2
    new-instance v4, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p1, v3, v4}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/winlator/cmod/core/Callback;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 317
    invoke-static {v3}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to copy container files to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 323
    :cond_3
    new-instance v4, Lcom/winlator/cmod/container/Container;

    invoke-direct {v4, v1, p0}, Lcom/winlator/cmod/container/Container;-><init>(ILcom/winlator/cmod/container/ContainerManager;)V

    .line 324
    .local v4, "newContainer":Lcom/winlator/cmod/container/Container;
    invoke-virtual {v4, v3}, Lcom/winlator/cmod/container/Container;->setRootDir(Ljava/io/File;)V

    .line 325
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/container/Container;->setName(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->saveData()V

    .line 327
    iget-object v5, p0, Lcom/winlator/cmod/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget v5, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container imported successfully to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz p2, :cond_4

    .line 333
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 337
    .end local v1    # "newContainerId":I
    .end local v2    # "newContainerName":Ljava/lang/String;
    .end local v3    # "newContainerDir":Ljava/io/File;
    .end local v4    # "newContainer":Lcom/winlator/cmod/container/Container;
    :cond_4
    goto :goto_1

    .line 296
    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid container directory for import: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return-void

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to import container from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static synthetic lambda$loadShortcuts$5(Lcom/winlator/cmod/container/Shortcut;)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # Lcom/winlator/cmod/container/Shortcut;

    .line 221
    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$removeContainerAsync$3(Lcom/winlator/cmod/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 115
    invoke-direct {p0, p1}, Lcom/winlator/cmod/container/ContainerManager;->removeContainer(Lcom/winlator/cmod/container/Container;)V

    .line 116
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method private loadContainers()V
    .locals 10

    .line 56
    const-string v0, "xuser-"

    iget-object v1, p0, Lcom/winlator/cmod/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/winlator/cmod/container/ContainerManager;->homeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 61
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 62
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 63
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    new-instance v5, Lcom/winlator/cmod/container/Container;

    .line 66
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6, p0}, Lcom/winlator/cmod/container/Container;-><init>(ILcom/winlator/cmod/container/ContainerManager;)V

    .line 69
    .local v5, "container":Lcom/winlator/cmod/container/Container;
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/winlator/cmod/container/ContainerManager;->homeDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/container/Container;->setRootDir(Ljava/io/File;)V

    .line 70
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/winlator/cmod/container/Container;->getConfigFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v6, "data":Lorg/json/JSONObject;
    invoke-virtual {v5, v6}, Lcom/winlator/cmod/container/Container;->loadData(Lorg/json/JSONObject;)V

    .line 72
    iget-object v7, p0, Lcom/winlator/cmod/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget v7, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I

    iget v8, v5, Lcom/winlator/cmod/container/Container;->id:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "container":Lcom/winlator/cmod/container/Container;
    .end local v6    # "data":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "files":[Ljava/io/File;
    :cond_1
    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "ContainerManager"

    const-string v2, "Error loading containers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private removeContainer(Lcom/winlator/cmod/container/Container;)V
    .locals 1
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;

    .line 195
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 384
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 385
    return-void
.end method


# virtual methods
.method public activateContainer(Lcom/winlator/cmod/container/Container;)V
    .locals 4
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;

    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/container/ContainerManager;->homeDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xuser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/container/Container;->setRootDir(Ljava/io/File;)V

    .line 91
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/container/ContainerManager;->homeDir:Ljava/io/File;

    const-string v2, "xuser"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "./xuser-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public createContainerAsync(Lorg/json/JSONObject;Lcom/winlator/cmod/contents/ContentsManager;Lcom/winlator/cmod/core/Callback;)V
    .locals 8
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "contentsManager"    # Lcom/winlator/cmod/contents/ContentsManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/winlator/cmod/contents/ContentsManager;",
            "Lcom/winlator/cmod/core/Callback<",
            "Lcom/winlator/cmod/container/Container;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p3, "callback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Lcom/winlator/cmod/container/Container;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 98
    .local v4, "handler":Landroid/os/Handler;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/container/ContainerManager;Lorg/json/JSONObject;Lcom/winlator/cmod/contents/ContentsManager;Landroid/os/Handler;Lcom/winlator/cmod/core/Callback;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public duplicateContainerAsync(Lcom/winlator/cmod/container/Container;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 106
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/container/ContainerManager;Lcom/winlator/cmod/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public exportContainer(Lcom/winlator/cmod/container/Container;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 342
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/container/ContainerManager;Ljava/lang/Runnable;Lcom/winlator/cmod/container/Container;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 380
    return-void
.end method

.method public extractContainerPatternFile(Lcom/winlator/cmod/container/Container;Ljava/lang/String;Lcom/winlator/cmod/contents/ContentsManager;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z
    .locals 9
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;
    .param p2, "wineVersion"    # Ljava/lang/String;
    .param p3, "contentsManager"    # Lcom/winlator/cmod/contents/ContentsManager;
    .param p4, "containerDir"    # Ljava/io/File;
    .param p5, "onExtractFileListener"    # Lcom/winlator/cmod/core/OnExtractFileListener;

    .line 256
    iget-object v0, p0, Lcom/winlator/cmod/container/ContainerManager;->context:Landroid/content/Context;

    invoke-static {v0, p3, p2}, Lcom/winlator/cmod/core/WineInfo;->fromIdentifier(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentsManager;Ljava/lang/String;)Lcom/winlator/cmod/core/WineInfo;

    move-result-object v0

    .line 257
    .local v0, "wineInfo":Lcom/winlator/cmod/core/WineInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_container_pattern.tzst"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, "containerPattern":Ljava/lang/String;
    sget-object v1, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    iget-object v2, p0, Lcom/winlator/cmod/container/ContainerManager;->context:Landroid/content/Context;

    invoke-static {v1, v2, v7, p4, p5}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    move-result v1

    .line 260
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 261
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/winlator/cmod/core/WineInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/prefixPack.txz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v2, "containerPatternFile":Ljava/io/File;
    sget-object v3, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->XZ:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    invoke-static {v3, v2, p4}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    move v8, v1

    goto :goto_0

    .line 260
    .end local v2    # "containerPatternFile":Ljava/io/File;
    :cond_0
    move v8, v1

    .line 265
    .end local v1    # "result":Z
    .local v8, "result":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 267
    :try_start_0
    invoke-virtual {v0}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    const-string v3, "aarch64-windows"

    const-string v4, "system32"

    move-object v1, p0

    move-object v2, v0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/winlator/cmod/container/ContainerManager;->extractCommonDlls(Lcom/winlator/cmod/core/WineInfo;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)V

    goto :goto_1

    .line 270
    :cond_1
    const-string v3, "x86_64-windows"

    const-string v4, "system32"

    move-object v1, p0

    move-object v2, v0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/winlator/cmod/container/ContainerManager;->extractCommonDlls(Lcom/winlator/cmod/core/WineInfo;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)V

    .line 272
    :goto_1
    const-string v3, "i386-windows"

    const-string v4, "syswow64"

    move-object v1, p0

    move-object v2, v0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/winlator/cmod/container/ContainerManager;->extractCommonDlls(Lcom/winlator/cmod/core/WineInfo;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_2

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    return v2

    .line 279
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_2
    return v8
.end method

.method public getContainerById(I)Lcom/winlator/cmod/container/Container;
    .locals 3
    .param p1, "id"    # I

    .line 230
    iget-object v0, p0, Lcom/winlator/cmod/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/container/Container;

    .local v1, "container":Lcom/winlator/cmod/container/Container;
    iget v2, v1, Lcom/winlator/cmod/container/Container;->id:I

    if-ne v2, p1, :cond_0

    return-object v1

    .end local v1    # "container":Lcom/winlator/cmod/container/Container;
    :cond_0
    goto :goto_0

    .line 231
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainerForShortcut(Lcom/winlator/cmod/container/Shortcut;)Lcom/winlator/cmod/container/Container;
    .locals 4
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 284
    iget-object v0, p0, Lcom/winlator/cmod/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/container/Container;

    .line 285
    .local v1, "container":Lcom/winlator/cmod/container/Container;
    iget v2, v1, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {p1}, Lcom/winlator/cmod/container/Shortcut;->getContainerId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 286
    return-object v1

    .line 288
    .end local v1    # "container":Lcom/winlator/cmod/container/Container;
    :cond_0
    goto :goto_0

    .line 289
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/container/Container;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/winlator/cmod/container/ContainerManager;->containers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/winlator/cmod/container/ContainerManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getNextContainerId()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/winlator/cmod/container/ContainerManager;->maxContainerId:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public importContainer(Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "importDir"    # Ljava/io/File;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 293
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/container/ContainerManager;Ljava/io/File;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/winlator/cmod/container/ContainerManager;->isInitialized:Z

    return v0
.end method

.method public loadShortcuts()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/container/Shortcut;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/container/Shortcut;>;"
    iget-object v1, p0, Lcom/winlator/cmod/container/ContainerManager;->containers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/container/Container;

    .line 201
    .local v2, "container":Lcom/winlator/cmod/container/Container;
    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getDesktopDir()Ljava/io/File;

    move-result-object v3

    .line 202
    .local v3, "desktopDir":Ljava/io/File;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v4, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_0
    nop

    .line 206
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 207
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "fileName":Ljava/lang/String;
    const-string v8, ".lnk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, ".desktop"

    if-eqz v8, :cond_2

    .line 209
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, "filePath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "."

    invoke-virtual {v8, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v10

    .line 211
    .local v9, "desktopFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 212
    iget-object v10, p0, Lcom/winlator/cmod/container/ContainerManager;->context:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/winlator/cmod/core/MSLink;->createDesktopFile(Ljava/io/File;Landroid/content/Context;)V

    .line 213
    new-instance v10, Lcom/winlator/cmod/container/Shortcut;

    invoke-direct {v10, v2, v9}, Lcom/winlator/cmod/container/Shortcut;-><init>(Lcom/winlator/cmod/container/Container;Ljava/io/File;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "desktopFile":Ljava/io/File;
    :cond_1
    goto :goto_2

    .line 216
    :cond_2
    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Lcom/winlator/cmod/container/Shortcut;

    invoke-direct {v8, v2, v6}, Lcom/winlator/cmod/container/Shortcut;-><init>(Lcom/winlator/cmod/container/Container;Ljava/io/File;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    :cond_3
    :goto_2
    goto :goto_1

    .line 219
    .end local v2    # "container":Lcom/winlator/cmod/container/Container;
    .end local v3    # "desktopDir":Ljava/io/File;
    .end local v4    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_4
    goto/16 :goto_0

    .line 221
    :cond_5
    new-instance v1, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 222
    return-object v0
.end method

.method public removeContainerAsync(Lcom/winlator/cmod/container/Container;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 114
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/container/ContainerManager;Lcom/winlator/cmod/container/Container;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method
