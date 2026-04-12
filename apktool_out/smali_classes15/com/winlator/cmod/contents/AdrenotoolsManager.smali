.class public Lcom/winlator/cmod/contents/AdrenotoolsManager;
.super Ljava/lang/Object;
.source "AdrenotoolsManager.java"


# instance fields
.field private adrenotoolsContentDir:Ljava/io/File;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "contents/adrenotools"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->adrenotoolsContentDir:Ljava/io/File;

    .line 40
    iget-object v0, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->adrenotoolsContentDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->adrenotoolsContentDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_0
    return-void
.end method

.method private reloadContainers(Ljava/lang/String;)V
    .locals 12
    .param p1, "adrenoToolsDriverId"    # Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/winlator/cmod/container/ContainerManager;

    iget-object v1, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/winlator/cmod/container/ContainerManager;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "containerManager":Lcom/winlator/cmod/container/ContainerManager;
    invoke-virtual {v0}, Lcom/winlator/cmod/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "System"

    const-string v4, " matches "

    const-string v5, "turnip25.1.0"

    const-string v6, "AdrenotoolsManager"

    const-string v7, "version"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/container/Container;

    .line 90
    .local v2, "container":Lcom/winlator/cmod/container/Container;
    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->parseGraphicsDriverConfig(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 91
    .local v8, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Checking if container driver version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found a match for container "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v4, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/winlator/cmod/core/GPUInformation;->isDriverSupported(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v5

    :cond_0
    invoke-virtual {v8, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v8}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->toGraphicsDriverConfig(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->setGraphicsDriverConfig(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->saveData()V

    .line 98
    .end local v2    # "container":Lcom/winlator/cmod/container/Container;
    .end local v8    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    goto/16 :goto_0

    .line 99
    :cond_2
    invoke-virtual {v0}, Lcom/winlator/cmod/container/ContainerManager;->loadShortcuts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/container/Shortcut;

    .line 100
    .local v2, "shortcut":Lcom/winlator/cmod/container/Shortcut;
    iget-object v8, v2, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v8}, Lcom/winlator/cmod/container/Container;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v8

    const-string v9, "graphicsDriverConfig"

    invoke-virtual {v2, v9, v8}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->parseGraphicsDriverConfig(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 101
    .restart local v8    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Checking if shortcut driver version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 103
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found a match for shortcut "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v10, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v10}, Lcom/winlator/cmod/core/GPUInformation;->isDriverSupported(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v5

    goto :goto_2

    :cond_3
    move-object v10, v3

    :goto_2
    invoke-virtual {v8, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v8}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->toGraphicsDriverConfig(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Lcom/winlator/cmod/container/Shortcut;->saveData()V

    .line 108
    .end local v2    # "shortcut":Lcom/winlator/cmod/container/Shortcut;
    .end local v8    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    goto/16 :goto_1

    .line 109
    :cond_5
    return-void
.end method


# virtual methods
.method public enumarateInstalledDrivers()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "driversList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->adrenotoolsContentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 122
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->isFromResources(Ljava/lang/String;)Z

    move-result v5

    .line 123
    .local v5, "fromResources":Z
    if-nez v5, :cond_0

    new-instance v6, Ljava/io/File;

    const-string v7, "meta.json"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "fromResources":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_1
    return-object v0
.end method

.method public extractDriverFromResources(Ljava/lang/String;)Z
    .locals 4
    .param p1, "adrenotoolsDriverId"    # Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "graphics_driver/adrenotools-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tzst"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "src":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->adrenotoolsContentDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v1, "dst":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    const/4 v2, 0x1

    return v2

    .line 154
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extracting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdrenotoolsManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v2, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    iget-object v3, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0, v1}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    .line 158
    .local v2, "hasExtracted":Z
    if-nez v2, :cond_1

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 161
    :cond_1
    return v2
.end method

.method public getDriverName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "adrenoToolsDriverId"    # Ljava/lang/String;

    .line 58
    const-string v0, ""

    .line 59
    .local v0, "driverName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->adrenotoolsContentDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v1, "driverPath":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "meta.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v2, "metaProfile":Ljava/io/File;
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 66
    .end local v2    # "metaProfile":Ljava/io/File;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 67
    :goto_0
    return-object v0
.end method

.method public getDriverPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "adrenotoolsDriverId"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->adrenotoolsContentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDriverVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "adrenoToolsDriverId"    # Ljava/lang/String;

    .line 71
    const-string v0, ""

    .line 72
    .local v0, "driverVersion":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->adrenotoolsContentDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v1, "driverPath":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "meta.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .local v2, "metaProfile":Ljava/io/File;
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "driverVersion"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 79
    .end local v2    # "metaProfile":Ljava/io/File;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 80
    :goto_0
    return-object v0
.end method

.method public getLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "adrenoToolsDriverId"    # Ljava/lang/String;

    .line 45
    const-string v0, ""

    .line 46
    .local v0, "libraryName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->adrenotoolsContentDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v1, "driverPath":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "meta.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .local v2, "metaProfile":Ljava/io/File;
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "libraryName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 53
    .end local v2    # "metaProfile":Ljava/io/File;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    .line 54
    :goto_0
    return-object v0
.end method

.method public installDriver(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p1, "driverUri"    # Landroid/net/Uri;

    .line 165
    const-string v0, "Failed to install driver, a valid driver has not been selected"

    const-string v1, "AdrenotoolsManager"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->adrenotoolsContentDir:Ljava/io/File;

    const-string v4, "tmp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .local v2, "tmpDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 167
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 170
    const-string v3, ""

    .line 173
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 174
    .local v4, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 175
    .local v5, "zis":Ljava/util/zip/ZipInputStream;
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 176
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v6, :cond_1

    .line 177
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .local v7, "dstFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/nio/file/CopyOption;

    sget-object v10, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v5, v8, v9}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 179
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    move-object v6, v8

    .line 180
    .end local v7    # "dstFile":Ljava/io/File;
    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 182
    new-instance v7, Ljava/io/File;

    const-string v8, "meta.json"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 183
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 184
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->adrenotoolsContentDir:Ljava/io/File;

    invoke-direct {v7, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v7, "dst":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, ""

    if-nez v8, :cond_2

    :try_start_1
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 186
    invoke-virtual {v2, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 188
    :cond_2
    move-object v3, v9

    .line 189
    invoke-static {v2}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 191
    .end local v7    # "dst":Ljava/io/File;
    :goto_1
    goto :goto_2

    .line 193
    :cond_3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    :goto_2
    goto :goto_3

    .line 197
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v4

    .line 198
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 202
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    return-object v3
.end method

.method public isFromResources(Ljava/lang/String;)Z
    .locals 5
    .param p1, "adrenotoolsDriverId"    # Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "graphics_driver/adrenotools-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tzst"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "driver":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 132
    .local v1, "am":Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 133
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x1

    .line 136
    .local v3, "isFromResources":Z
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 137
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 139
    :catch_0
    move-exception v4

    .line 140
    .local v4, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 143
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return v3
.end method

.method public removeDriver(Ljava/lang/String;)V
    .locals 2
    .param p1, "adrenoToolsDriverId"    # Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing driver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdrenotoolsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/contents/AdrenotoolsManager;->adrenotoolsContentDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .local v0, "driverPath":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->reloadContainers(Ljava/lang/String;)V

    .line 115
    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 116
    return-void
.end method

.method public setDriverById(Lcom/winlator/cmod/core/EnvVars;Lcom/winlator/cmod/xenvironment/ImageFs;Ljava/lang/String;)V
    .locals 6
    .param p1, "envVars"    # Lcom/winlator/cmod/core/EnvVars;
    .param p2, "imagefs"    # Lcom/winlator/cmod/xenvironment/ImageFs;
    .param p3, "adrenotoolsDriverId"    # Ljava/lang/String;

    .line 206
    invoke-virtual {p0, p3}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->isFromResources(Ljava/lang/String;)Z

    move-result v0

    .line 208
    .local v0, "isFromResources":Z
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->enumarateInstalledDrivers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    :cond_0
    invoke-virtual {p0, p3}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->getDriverPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "driverPath":Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->getLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    const-string v2, "ADRENOTOOLS_DRIVER_PATH"

    invoke-virtual {p1, v2, v1}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    const-string v2, "ADRENOTOOLS_HOOKS_PATH"

    invoke-virtual {p2}, Lcom/winlator/cmod/xenvironment/ImageFs;->getLibDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    const-string v2, "ADRENOTOOLS_DRIVER_NAME"

    invoke-virtual {p0, p3}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->getLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/winlator/cmod/SettingsFragment;->DEFAULT_WINLATOR_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "winlatorDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "qgl_config.txt"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .local v3, "qglConfig":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ADRENOTOOLS_REDIRECT_DIR"

    invoke-virtual {p1, v5, v4}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    .end local v1    # "driverPath":Ljava/lang/String;
    .end local v2    # "winlatorDir":Ljava/io/File;
    .end local v3    # "qglConfig":Ljava/io/File;
    :cond_1
    return-void
.end method
